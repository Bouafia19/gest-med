json.extract! user, :id, :name, :email, :date_of_birth, :password, :adress, :cite, :country, :role, :created_at, :updated_at
json.url user_url(user, format: :json)
