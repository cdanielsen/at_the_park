class ChangeDogs4 < ActiveRecord::Migration
  def change
    change_table :parks do |t|
      t.remove :off_leash, :fenced
      t.boolean :off_leash, :fenced
    end
  end
end
