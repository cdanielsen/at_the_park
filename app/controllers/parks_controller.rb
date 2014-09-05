class ParksController < ApplicationController

  def index
    @parks = Park.all
    @users = User.all
    render('parks/index')
  end

end
