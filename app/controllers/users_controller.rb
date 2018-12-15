class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  before_action :authenticate_user!
  protect_from_forgery prepend: true

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

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:username, :description, :avatar_url)
  end
end
