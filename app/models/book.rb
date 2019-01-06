class Book < ApplicationRecord
  validates :title, presence: true
  validates :author , presence: true
  validates :description , presence: true

  enum status: [:read, :reading]

  has_one_attached :photo
end
