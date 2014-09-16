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
end
