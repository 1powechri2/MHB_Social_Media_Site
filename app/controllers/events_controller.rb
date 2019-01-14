class EventsController < ApplicationController
  before_action :check_status

  def create
    if event = Event.create(event_params)
      redirect_to admin_bibliophile_admin_path
    else
      render :file => 'public/500.html', :status => :not_found, :layout => false
    end
  end

  def destroy
    Event.delete(params[:id])
    redirect_to admin_bibliophile_admin_path
  end

  private

  def check_status
    unless current_user && current_user.admin?
      render :file => 'public/500.html', :status => :not_found, :layout => false
    end
  end

  def event_params
    params.require(:event).permit(:message)
  end
end
