class Park < ActiveRecord::Base

  validates :name, presence: true
  validates :location, presence: true

  has_many :visits
  has_many :users, through: :visits

end
