class Admin::BibliophileAdminController < ApplicationController
  before_action :admin_check
  def index
    @users = User.all
    @book  = Book.new
    @books = Book.all
    @event = Event.new
    @events = Event.all
  end

  def user_update
    if user = User.find(user_params[:id])
      user.update(user_params)
      redirect_to admin_bibliophile_admin_path
    else
      render :file => 'public/404.html', :status => :not_found, :layout => false
    end
  end

  private

  def admin_check
    unless current_user && current_user.admin?
      render :file => 'public/404.html', :status => :not_found, :layout => false
    end
  end

  def user_params
    params.require(:user).permit(:id, :auth_type)
  end
end
