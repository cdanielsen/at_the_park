class Visit < ActiveRecord::Base

  belongs_to :park
  belongs_to :user

  def self.user_visits(user)
    where("user_id = ?", user)
  end

  def self.park_visits(park)
    where("park_id = ?", park)
  end

end
