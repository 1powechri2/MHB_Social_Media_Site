class Post < ApplicationRecord
  validates_presence_of :message
  belongs_to :user

  after_create_commit { MessageBroadcastJob.perform_later(self) }

  def create_date
    created_at.strftime('%A %b %w, %Y %l:%M')
  end
end
