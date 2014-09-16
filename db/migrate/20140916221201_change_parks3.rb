class ChangeParks3 < ActiveRecord::Migration
  def change
    change_column_default :parks, :fenced, false
  end
end
