class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages_channel"
  end

  def unsubscribed
  end

  def send_message(data)
    current_user.posts.create!(message: data['message'])
  end
end
