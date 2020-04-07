class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.date :date_of_birth
      t.string :sex
      t.string :specialist
      t.text :address
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
