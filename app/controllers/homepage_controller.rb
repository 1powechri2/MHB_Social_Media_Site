class HomepageController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc).limit(100).reverse
    @post  = Post.new
    @user  = User.new
    @books = Book.where(:status => 'reading')
    @events = Event.all
  end
end
