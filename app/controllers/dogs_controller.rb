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

  def edit
    @user = User.find(params[:user_id])
    @dog = Dog.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @dog = Dog.find(params[:id])
    if @dog.update(dog_params)
      flash[:notice] = "#{@dog.name} info updated!"
      redirect_to user_dog_path(@user, @dog)
    else
      render edit_user_dog_path(@user, @dog)
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @dog = Dog.find(params[:id])
    @dog.destroy
    flash[:alert] = "#{@dog.name} is no more =("
    redirect_to user_dog_path(@user, @dog)
  end

private
  def dog_params
    params.require(:dog).permit(:name, :age, :breed, :headshot)
  end

end
