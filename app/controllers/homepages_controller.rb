class HomepagesController < ApplicationController
  def index
    @parks = Park.all
    @users = User.all
    render('homepages/index')
  end
end
