class User < ActiveRecord::Base

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

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

