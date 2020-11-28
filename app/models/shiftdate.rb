class Shiftdate < ApplicationRecord
    has_many :shiftdatejobs
    has_many :jobs, through: :shiftdatejobs
end
