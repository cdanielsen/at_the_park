class HomepagesController < ApplicationController

  def index
    # @park = Park.new
    @users = User.all
    @parks = Park.all
    @visits = Visit.all
  end
end
