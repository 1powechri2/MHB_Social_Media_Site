class BooksController < ApplicationController
  def create
    if book = Book.create(book_params)
      redirect_to admin_bibliophile_admin_path
    else
      redirect_to admin_bibliophile_admin_path
    end
  end

  def destroy
    Book.destroy(params[:id])
    redirect_to admin_bibliophile_admin_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :description, :photo, :status)
  end
end
