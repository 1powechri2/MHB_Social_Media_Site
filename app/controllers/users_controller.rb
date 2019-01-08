class UsersController < ApplicationController
  def show
    if user = User.find(params[:id])
      if user == current_user
        redirect_to edit_user_path
      end
      @user = user
    else
      flash[:user_failure] = 'You have entered an invalid user id.'
      redirect_to root_path
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      cookies.encrypted[:user_id] = user.id
      redirect_to root_path
    else
      flash[:failure] = 'You must have entered something wrong. Please try again.'
      redirect_to root_path
    end
  end

  def edit
    @user = current_user
  end

  def update
    current_user.update(user_params)
    redirect_to user_path
  end

  private
  def user_params
    params.permit(:first_name, :last_name, :username, :password, :email, :bio, :photo)
  end
end
