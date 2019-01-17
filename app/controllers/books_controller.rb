class BooksController < ApplicationController
  def create
    if book = Book.create(book_params)
      redirect_to admin_bibliophile_admin_path
    else
      redirect_to admin_bibliophile_admin_path
    end
  end

  def update
    if book = Book.find(params[:id]).update(book_params)
      redirect_to admin_bibliophile_admin_path
    else
      render :file => 'public/500.html', :status => :not_found, :layout => false
    end
  end

  def destroy
    Book.destroy(params[:id])
    redirect_to admin_bibliophile_admin_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :description, :photo, :status, :id)
  end
end
