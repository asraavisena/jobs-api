class Language < ApplicationRecord
    has_many :joblanguages
    has_many :jobs, through: :joblanguages

    accepts_nested_attributes_for :jobs
end
