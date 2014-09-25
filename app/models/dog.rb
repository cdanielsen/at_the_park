class Dog < ActiveRecord::Base

  has_attached_file :headshot, :styles => { :medium => "300x300>", :thumb => "200x200>", :teeny => "100x100>", :tiny => "50x50>" }, :default_url => "/images/dog_missing.png"
  validates_attachment_content_type :headshot, :content_type => /\Aimage\/.*\Z/

  validates :name, presence: true

  belongs_to :user

end
