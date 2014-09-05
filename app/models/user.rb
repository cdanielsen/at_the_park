class User < ActiveRecord::Base

  validates :name, presence: true

  has_many :visits
  has_many :parks, through: :visits

end

