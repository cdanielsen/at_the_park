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

end
