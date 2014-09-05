class ParksController < ApplicationController
  def index
    @parks = Park.all
    render('parks/index')
  end
end
