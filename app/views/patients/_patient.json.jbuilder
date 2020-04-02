json.extract! patient, :id, :name, :date_of_birth, :sex, :address, :city, :country, :document_data, :created_at, :updated_at
json.url patient_url(patient, format: :json)
