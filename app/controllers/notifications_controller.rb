class NotificationsController < ApplicationController

  def show
      @notification = Notification.find(params[:id])
      render json: @notification
  end
  
end
