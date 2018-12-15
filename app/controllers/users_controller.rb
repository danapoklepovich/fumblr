class UsersController < ApplicationController
  before_action :set_user, only: [:show, :follow]

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
  def show
    @followers = @user.followers
    @followings = @user.followings
  end

  def follow
    @user.followers << current_user
    redirect_to user_path(username: @user.username)
  end

  private
    def set_user
      @user = User.find_by(username: params[:username])
    end
end
