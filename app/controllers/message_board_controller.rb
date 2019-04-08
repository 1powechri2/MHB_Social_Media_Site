class MessageBoardController < ApplicationController
  def index
    @posts = Post.includes(user: [photo_attachment: [:blob]]).order(created_at: :desc).limit(100).reverse
    @post  = Post.new
  end
end
