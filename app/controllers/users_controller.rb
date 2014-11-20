class UsersController < ApplicationController

before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @parks = Park.all
    @visit = Visit.new
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:alert] = "#{@user.name} has been deleted"
    redirect_to "/"
  end
end
