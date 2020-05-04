class Doctor < ApplicationRecord

    include PublicActivity::Model
    tracked owner: ->(controller, model) { controller && controller.current_user }

    has_many :consultings
    has_many :patients, through: :consultings

    scope :all_except, ->(s) { where.not(id: s) }
    
    after_initialize :set_defaults 

    geocoded_by :address
    after_validation :geocode

    validates_presence_of :name ,:city

    def set_defaults
        self.country ||= "algerie"
    end
end
