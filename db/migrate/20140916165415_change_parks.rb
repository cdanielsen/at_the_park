class ChangeParks < ActiveRecord::Migration
  def change
    rename_column :parks, :off_leash?, :off_leash
    rename_column :parks, :fenced?, :fenced
  end
end
