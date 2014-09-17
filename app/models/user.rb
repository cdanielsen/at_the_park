class User < ActiveRecord::Base

  validates :name, presence: true

  has_many :visits
  has_many :parks, through: :visits
  has_many :dogs

  before_save :prettify_names

  private

    def prettify_names
      self.name = self.name.downcase.titleize
    end

end

