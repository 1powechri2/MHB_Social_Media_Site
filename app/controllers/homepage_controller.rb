class HomepageController < ApplicationController
  def index
    @user  = User.new
    @book = Book.where(:status => 'reading')
    @books = Book.includes(photo_attachment: [:blob]).all
  end
end
