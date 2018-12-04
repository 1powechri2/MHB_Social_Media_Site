class MessageSerializer < ActiveModel::Serializer
  attributes :message
  belongs_to :user
end
