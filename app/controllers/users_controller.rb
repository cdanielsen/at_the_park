class UsersController < ApplicationController

  def index
    @users = User.all
    render 'users/index'
  end

  def new
    @user = User.new
    render 'users/new'
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "New User '#{@user.name}' created!"
      redirect_to '/'
    else
      render 'users/new'
    end
  end

  def show
    @user = User.find(params[:id])
    render 'users/show'
  end

end
