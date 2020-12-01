class User < ApplicationRecord
  has_many :jobs
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    length: { maximum:105 }, format: { with: VALID_EMAIL_REGEX }
  has_secure_password
end
