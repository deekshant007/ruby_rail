class User < ApplicationRecord
  has_secure_password
  enum role: [:receptionist, :doctor]

  validates :email, presence: true, uniqueness: true
end
