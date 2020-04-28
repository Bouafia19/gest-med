class Doctor < ApplicationRecord
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
