class AddAvisToConsultings < ActiveRecord::Migration[5.2]
  def change
    add_column :consultings, :avis, :text
  end
end
