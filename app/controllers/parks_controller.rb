class ParksController < ApplicationController

  def index
    @parks = Park.all
    @users = User.all
  end

  def new
    @park = Park.new
  end

  def create
    @park = Park.new(params[:park])
    if @park.save
      flash[:notice] = "New Park '#{@park.name}' created!"
      redirect_to '/parks'
    else
      render new_park_path
    end
  end

  def show
    @visits = Visit.park_visits(params[:id])
    @park = Park.find(params[:id])
  end

  def edit
    @park = Park.find(params[:id])
  end

  def update
    @park = Park.find(params[:id])
    if @park.update(params[:park])
      flash[:notice] = "#{@park.name} updated successfully!"
      redirect_to "/parks/#{@park.id}"
    else
      render edit_park_path
    end
  end

  def destroy
    @park = Park.find(params[:id])
    @park.destroy
    flash[:alert] = "Park deleted!"
    redirect_to '/parks'
  end
end
