class ChangeUser < ActiveRecord::Migration
  def change
    change_column_default :users, :gender, "Not Given"
    change_column_default :users, :age, 0
  end
end
