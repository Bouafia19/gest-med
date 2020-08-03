class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy,:change_passd]

  # GET /users
  # GET /users.json
  def index
    if can? :update, @users
      @users = User.all
    else
      
      redirect_to :root
      flash[:alert] = "Vous n'avez pas les deroits a acceder ces informations."
    end
    
  end

  # GET /users/1
  # GET /users/1.json
  def show
    
    if  @user.id == current_user.id || current_user.role == "admin"
      
    else
      
      redirect_to :root
      flash[:alert] = "Vous n'avez pas les deroits a acceder ces informations."
    end
  end

  def change_passd
    if  @user.id == current_user.id || current_user.role == "admin"
      
    else
      
      redirect_to :root
      flash[:alert] = "Vous n'avez pas les deroits a acceder ces informations."
    end
  end
  
  # GET /users/new
  def new
    if can? :update, @users
    @user = User.new
  else
      
    redirect_to :root
    flash[:alert] = "Vous n'avez pas les deroits a acceder ces informations."
  end
  end

  # GET /users/1/edit
  def edit
    if  @user.id == current_user.id || current_user.role == "admin"
      
    else
      
      redirect_to :root
      flash[:alert] = "Vous n'avez pas les deroits a acceder ces informations."
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    #require 'json'
    respond_to do |format|
      if @user.save
        if @user.role == "docteur"
          @doc = Doctor.new
          @doc.user_id = @user.id
          @doc.name = @user.name
          @doc.city = @user.cite
          @doc.date_of_birth = @user.date_of_birth
          @doc.address = @user.adress
          @doc.country = @user.country
          if @doc.save!
            flash[:notice] = 'Médecin enregistré avec succes.'
          else
            flash[:error] = "Une erreur s'est produite."
          end

        

        # @all = Doctor.all
         # File.open("public/test.json","w") do |f|
          #  f.write(@all.to_json)
         #end

        end

        UserMailer.welcome_email(@user).deliver_now
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
       
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email, :date_of_birth, :password, :adress, :cite, :country, :role, :avatar, :deactivated)
    end
end
