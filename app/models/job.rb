class Job < ApplicationRecord
    has_many :joblanguages
    has_many :languages, through: :joblanguages
    
    validates :languages, length: { minimum: 1 }
    accepts_nested_attributes_for :languages
end
