class ChangeDog2 < ActiveRecord::Migration
  def change
    change_column_default :dogs, :breed, "Not Given"
  end
end
