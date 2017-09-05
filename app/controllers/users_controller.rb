class UsersController < ApplicationController
  # has_many :posts

  # before_action :require_login, only: [:show]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to @user
  end

  def show
    @user = User.find_by_id(params[:id])
    render :show
  end

  def edit
    @user = User.find_by_id(params[:id])
    # @user.bio.build
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.update_attributes(user_params)
    redirect_to @user
  end



  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password, :bio)
  end

end
