class AddAvatarToDoctors < ActiveRecord::Migration[5.2]
  
    def up
      add_attachment :doctors, :avatar
    end
   
    def down
      remove_attachment :doctors, :avatar
    end
  end

