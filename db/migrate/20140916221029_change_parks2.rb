class ChangeParks2 < ActiveRecord::Migration
  def change
    change_column_default :parks, :off_leash, false
    change_column_default :parks, :fenced, true
  end
end
