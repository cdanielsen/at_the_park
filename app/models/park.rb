class Park < ActiveRecord::Base

  validates :name, presence: true
  validates :location, presence: true

  has_many :visits
  has_many :users, through: :visits
  has_many :dogs, through: :users

  before_save :prettify_names, :standardize_location

  private

    def prettify_names
      self.name = self.name.downcase.titleize
    end

    def standardize_location
      self.location = self.location.downcase.titleize
    end

end
