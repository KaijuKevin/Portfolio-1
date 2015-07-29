class UsersController < ApplicationController
  load_and_authorize_resource
  def index
    @users = User.all
  end

  def new
  end

  def create
    @user = User.create( user_params )
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    @user = User.update( user_params )
  end

  private

  def user_params
    params.require(:user).permit(:avatar)
  end
end
