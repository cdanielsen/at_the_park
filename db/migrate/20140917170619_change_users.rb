class ChangeUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :gender, :age
      t.string :gender, :age
    end
  end
end
