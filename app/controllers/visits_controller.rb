class VisitsController < ApplicationController

  def create
    @user = User.find(params[:visit]['user_id'])
    @park = Park.find(params[:visit]['park_id'])
    @visit = Visit.new(params[:visit])
    if @visit.save
      flash[:notice] = "#{@user.name} checked in @#{@park.name}!"
      redirect_to "/users/#{params[:visit]['user_id']}"
    else
      flash[:alert] = "Oops! Something went wrong..."
      redirect_to :back
    end
  end

end
