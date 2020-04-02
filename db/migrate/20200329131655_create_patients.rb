class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.date :date_of_birth
      t.string :sex
      t.text :address
      t.string :city
      t.string :country
      t.text :document_data

      t.timestamps
    end
  end
end
