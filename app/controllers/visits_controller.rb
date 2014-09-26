class VisitsController < ApplicationController

  def create
    @park = Park.find(params[:visit]['park_id'])
    @visit = Visit.new(params[:visit].merge(user_id: current_user.id))
    if @visit.save
      flash[:notice] = "#{current_user.name} checked in @#{@park.name}!"
      redirect_to "/users/#{current_user.id}"
    else
      flash[:alert] = "Oops! Something went wrong..."
      redirect_to :back
    end
  end

end
