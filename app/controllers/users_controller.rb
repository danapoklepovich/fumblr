class UsersController < ApplicationController
  before_action :set_user, only: %i[show]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  def dashboard
    @user = current_user
    @followers = @user.followers
    @followings = @user.followings
  end

  # GET /users/1
  # GET /users/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end
end
