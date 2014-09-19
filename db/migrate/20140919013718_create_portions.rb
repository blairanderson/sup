class CreatePortions < ActiveRecord::Migration
  def change
    create_table :portions do |t|
      t.integer :meal_id
      t.integer :food_id
      t.integer :size
      t.integer :unit_cd

      t.timestamps
    end
    add_index :portions, :meal_id
    add_index :portions, :food_id
    add_index :portions, :unit_cd
  end
end
