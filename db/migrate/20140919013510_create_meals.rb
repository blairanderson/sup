class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :type_cd, null: false

      t.timestamps
    end
    add_index :meals, :meal_type_cd
  end
end
