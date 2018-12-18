class Api::V1::MessagesController < ApplicationController
  def show
    render json: Message.all
  end

  def create
  end
end
