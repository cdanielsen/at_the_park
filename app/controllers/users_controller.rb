class UsersController < ApplicationController

# before_action :authenticate_user!

  def index
    @users = User.all
    render 'users/index'
  end

  def new
    @user = User.new
    render 'users/new'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "New User '#{@user.name}' created!"
      redirect_to '/'
    else
      render 'users/new'
    end
  end

  def show
    @user = User.find(params[:id])
    @parks = Park.all
    render 'users/show'
  end

  def edit
    @user = User.find(params[:id])
    render 'users/edit'
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "#{@user.name} updated successfully!"
      redirect_to "/users/#{@user.id}"
    else
      render 'users/edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:alert] = "User #{@user.name} deleted!"
    redirect_to '/users'
  end
end

def user_params
  params.require(:user).permit(:name, :email, :password, :age, :gender, :avatar)
end
