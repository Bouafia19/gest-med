class AddSousSpesialistToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :sous_spesialist, :string
  end
end
