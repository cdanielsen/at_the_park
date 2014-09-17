class HomepagesController < ApplicationController

  def index
    @users = User.all
    @parks = Park.all
    @visits = Visit.all
    render 'homepages/index'
  end
end
