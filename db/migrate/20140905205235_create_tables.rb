class CreateTables < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :name
      t.string :location
      t.boolean :off_leash?
      t.boolean :fenced?
      t.timestamps
    end

    create_table :users do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.timestamps
    end

    create_table :visits do |t|
      t.integer :park_id
      t.integer :user_id
      t.timestamps
    end

    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.timestamps
    end
  end
end
