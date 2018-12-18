class MessageSerializer < ActiveModel::Serializer
  attributes :message, :id
  belongs_to :user
end
