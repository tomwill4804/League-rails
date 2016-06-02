class TeamsController < ApplicationController

  def show
      @team = Team.find(params[:id])
      render json: @team
  end

  def index
    @teams = nil
    if params[:access_token]
      @user = User.find_by(access_token: params[:access_token])
      if @user
        @teams = @user.teams
      end
    end
    render json: @teams
  end

end
