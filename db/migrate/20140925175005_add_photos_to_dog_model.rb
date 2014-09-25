class AddPhotosToDogModel < ActiveRecord::Migration
  def change
    add_attachment :dogs, :headshot
  end
end
