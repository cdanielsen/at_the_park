class HomepagesController < ApplicationController

  def index
    @users = User.all
    @parks = Park.all
    @visits = Visit.all
  end
end
