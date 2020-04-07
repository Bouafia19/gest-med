json.extract! doctor, :id, :name, :date_of_birth, :sex, :specialist, :address, :city, :country, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
