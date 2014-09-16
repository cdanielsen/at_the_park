class ParksController < ApplicationController

  def index
    @parks = Park.all
    @users = User.all
    render('parks/index')
  end

  def new
    @park = Park.new
    render('parks/new')
  end

  def create
    @park = Park.new(params[:park])
    if @park.save
      redirect_to '/parks'
    else
      render 'parks/new'
    end
  end

  def show
    @park = Park.find(params[:id])
    render 'parks/show'
  end

  def edit
    @park = Park.find(params[:id])
    render 'parks/edit'
  end

  def update
    @park = Park.find(params[:id])
    if @park.update(params[:park])
      redirect_to "/parks/#{@park.id}"
    else
      render 'parks/edit'
    end
  end

  def destroy
    @park = Park.find(params[:id])
    @park.destroy
    flash[:alert] = "Park deleted!"
    redirect_to '/parks'
  end
end
