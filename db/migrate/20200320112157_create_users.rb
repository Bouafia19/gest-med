class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :date_of_birth
      t.string :password
      t.text :adress
      t.string :cite
      t.string :country
      t.string :role

      t.timestamps
    end
  end
end
