class PostsController < ApplicationController
  def destroy
    current_user.posts.destroy(params[:id])
    redirect_to user_path(current_user)
  end
end
