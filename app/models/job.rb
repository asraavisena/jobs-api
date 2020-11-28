class Job < ApplicationRecord
    has_many :joblanguages
    has_many :languages, through: :joblanguages
    
    has_many :shiftdatejobs
    has_many :shiftdates, through: :shiftdatejobs

    validates :shiftdates, length: { minimum: 1, maximum: 7 }
    
    validates :languages, length: { minimum: 1 }
    accepts_nested_attributes_for :languages
end
