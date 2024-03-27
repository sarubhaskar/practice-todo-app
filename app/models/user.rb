class User < ApplicationRecord
  has many :todos

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
