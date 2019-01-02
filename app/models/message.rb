class Message < ApplicationRecord
  validates :message, presence: true
  belongs_to :user

  def create_date
    created_at.strftime('%A %b %w, %Y %l:%M')
  end
end
