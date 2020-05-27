class AddNumOrdreToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :num_ordre, :string
  end
end
