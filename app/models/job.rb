class Job < ApplicationRecord
    has_many :joblanguages
    has_many :languages, through: :joblanguages
    
    has_many :shiftdatejobs
    has_many :shiftdates, through: :shiftdatejobs

    validates :shiftdates, length: { minimum: 1, maximum: 7 }
    
    validates :languages, length: { minimum: 1 }
    accepts_nested_attributes_for :languages

    # total salary for 8 hours
    def total_salary
        {
            salary: salary * 8
        }
    end

    # # 8 hours  salary
    # def self.show_salary(id)
    # @get_salary = Job.find(id).salary
    # @salary_count = @get_salary * 8
    # end
end
