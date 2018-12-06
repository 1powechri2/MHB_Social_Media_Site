class SessionController < ApplicationController
  def login
    user = User.find_by(username: login_params[:username])
    if user && user.authenticate(login_params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:login_error] = 'You Entered the wrong username or password'
      redirect_to root_path
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def login_params
    params.permit(:username, :password)
  end
end
