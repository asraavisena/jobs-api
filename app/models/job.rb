class Job < ApplicationRecord
    has_many :joblanguages
    has_many :languages, through: :joblanguages
end
