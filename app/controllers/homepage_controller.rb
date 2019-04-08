class HomepageController < ApplicationController
  def index
    @user  = User.new
    @books = Book.where(:status => 'reading')
    @events = Event.all
  end
end
