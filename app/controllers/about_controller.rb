class AboutController < ApplicationController
  def index
    @books = Book.includes(photo_attachment: [:blob]).all
  end
end
