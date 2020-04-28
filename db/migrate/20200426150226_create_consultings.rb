class CreateConsultings < ActiveRecord::Migration[5.2]
  def change
    create_table :consultings do |t|
      t.integer :doctor_id
      t.string :doctor_name
      t.integer :patient_id
      t.string :patient_name

      t.timestamps
    end
  end
end
