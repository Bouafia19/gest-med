class AddAttachmentDocumentToPatients < ActiveRecord::Migration[5.2]
  def self.up
    change_table :patients do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :patients, :document
  end
end
