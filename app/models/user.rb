class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :bio, presence: true
  validates :email, presence: true, uniqueness: true
  has_secure_password
  has_many :messages
end
