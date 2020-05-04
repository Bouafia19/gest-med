class Patient < ApplicationRecord

    include PublicActivity::Model
    tracked owner: ->(controller, model) { controller && controller.current_user }

    has_many :consultings
    has_many :doctors, through: :consultings

    
    
has_attached_file :document
validates_attachment :document, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }

end
