class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "messages_channel", {message: message.message,
                                                      date: message.create_date,
                                                      username: message.user.username,
                                                      user_id: message.user.id,
                                                      photo: message.user.photo_url}
  end
end
