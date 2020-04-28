class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy, :add_consulting]

  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all
  end

  def search
    @patien = Patient.where(['city LIKE ? AND sex LIKE ?', "%#{params[:city]}%","%#{params[:sex]}%"])
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    @cont_sel = @patient.consultings
    @acha_pros = @patient.consultings
    @patient = Patient.find(params[:id])
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_consulting
    @pro = Consulting.new
    @pro.doctor_id = params[:doctor_id]

    @pros = Doctor.find(params[:doctor_id])
    @pro.doctor_name = @pros.name
    
    @pro.avis = params[:avis]
    @pro.patient_id = @patient.id
    @pro.patient_name = @patient.name
    if @pro.save!
      flash[:notice] = 'Avis enregistré avec succes.'
      redirect_to :action => :show, :id => params[:id]
    else
      flash[:error] = "Une erreur s'est produite."
      redirect_to :action => :show, :id => params[:id]
    end
  end

  def delete_consulting
    @pro = Consulting.find(params[:doctor_id])

   
    @pro.destroy
    respond_to do |format|
      format.html { redirect_to patient_url(params[:id]), notice: 'consultation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_params
      params.require(:patient).permit(:name, :date_of_birth, :sex, :address, :city, :country, :document_data, :document)
    end
end
