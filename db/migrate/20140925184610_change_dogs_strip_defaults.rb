class ChangeDogsStripDefaults < ActiveRecord::Migration
  def change
    remove_column :dogs, :breed
    remove_column :dogs, :age
    add_column :dogs, :breed, :string
    add_column :dogs, :age, :integer
    add_column :dogs, :bio, :text
  end
end
