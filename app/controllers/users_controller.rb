class UsersController < ApplicationController

  def show
    if params[:access_token]
      @user = User.find_by(access_token: params[:access_token])
    end
    render json: @user
  end

  def index
    if params[:access_token]
      @user = User.find_by(access_token: params[:access_token])
    end
    render json: @user
  end

  def login
    @current_user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
    if @current_user
      @current_user.access_token = SecureRandom.hex
      @current_user.save
      render json: @current_user
    else
      head :unauthorized
    end
  end

end
