class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :time_cd, null: false

      t.timestamps
    end
    add_index :meals, :time_cd
  end
end
