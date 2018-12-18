class Api::V1::MessagesController < ApplicationController
  def show
    render json: Message.all
  end

  def create
    Message.create(message_params)
  end

private

  def message_params
    params.require(:message).permit(:message, :user_id)
  end
end
