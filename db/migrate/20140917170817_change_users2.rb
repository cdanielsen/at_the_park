class ChangeUsers2 < ActiveRecord::Migration
  def change
    remove_column :users, :age
    add_column :users, :age, :integer
  end
end
