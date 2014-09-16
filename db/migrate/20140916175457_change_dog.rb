class ChangeDog < ActiveRecord::Migration
  def change
    change_column_default :dogs, :breed, "false"
    change_column_default :dogs, :age, 0
  end
end
