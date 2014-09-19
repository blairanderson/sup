class CreateMealItems < ActiveRecord::Migration
  def change
    create_table :meal_items do |t|
      t.integer :meal_id
      t.string :description

      t.timestamps
    end
    add_index :meal_items, :meal_id
  end
end
