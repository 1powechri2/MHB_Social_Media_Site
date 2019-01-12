class Admin::BibliophileAdminController < ApplicationController
  before_action :admin_check
  def index
    @users = User.all
    @book  = Book.new
    @books = Book.all
  end

  def user_update
    binding.pry
  end
  private

  def admin_check
    unless current_user.admin?
      render :file => 'public/404.html', :status => :not_found, :layout => false
    end
  end

  def user_params
    params.require(:user).permit(:id, :auth_type)
  end
end
