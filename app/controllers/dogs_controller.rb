class DogsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @dog = Dog.new
  end

  def create
    @user = User.find(params[:user_id])
    @dog = Dog.new(dog_params)
    if @dog.save
      flash[:notice] = "Dog added!"
      @user.dogs << @dog
      redirect_to user_path(@user)
    else
      render user_path(@user)
    end
  end

  def show
    @user = User.find(params[:user_id])
    @dog = Dog.find(params[:id])
  end


private
  def dog_params
    params.require(:dog).permit(:name, :age, :breed)
  end

end
