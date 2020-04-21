class Doctor < ApplicationRecord
    after_initialize :set_defaults 

    geocoded_by :address
    after_validation :geocode

    validates_presence_of :name ,:city

    def set_defaults
        self.country ||= "algerie"
    end
end
