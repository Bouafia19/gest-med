class Doctor < ApplicationRecord

    include PublicActivity::Model
    tracked owner: ->(controller, model) { controller && controller.current_user }

    has_many :consultings
    has_many :patients, through: :consultings

    belongs_to :user

    scope :all_except, ->(s) { where.not(id: s) }
    
    after_initialize :set_defaults 

    geocoded_by :address
    after_validation :geocode

    validates_presence_of :name ,:city

    has_attached_file :avatar, styles: { medium: "300x300", thumb: "100x100" }
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

    def set_defaults
        self.country ||= "algerie"
    end
end
