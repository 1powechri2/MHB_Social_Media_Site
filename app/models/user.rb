class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :bio, presence: true
  validates :email, presence: true, uniqueness: true

  enum auth_type: [:user, :admin]

  has_secure_password

  has_many :posts
  has_one_attached :photo

  include Rails.application.routes.url_helpers

  def photo_url
    rails_blob_path(photo, disposition: "attachment", only_path: true)
  end
end
