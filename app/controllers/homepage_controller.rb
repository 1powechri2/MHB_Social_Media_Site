class HomepageController < ApplicationController
  def index
    @posts = Post.all
    @post  = Post.new
    @user  = User.new
    @books = Book.where(:status => 'reading')
  end
end
