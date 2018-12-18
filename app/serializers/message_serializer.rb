class MessageSerializer < ActiveModel::Serializer
  attributes :message, :id, :create_date
  belongs_to :user

  def create_date
    self.object.created_at.strftime('%A %b %w, %Y %l:%M') 
  end
end
