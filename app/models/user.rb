class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "200x200>", :teeny => "100x100>", :tiny => "50x50>" }, :default_url => "/images/human_missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates :name, presence: true

  has_many :visits
  has_many :parks, through: :visits
  has_many :dogs, dependent: :destroy

  before_save :prettify_names

  private

    def prettify_names
      self.name = self.name.downcase.titleize
    end

end

