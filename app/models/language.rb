class Language < ApplicationRecord
    has_many :joblanguages
    has_many :jobs, through: :joblanguages
end
