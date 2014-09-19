class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :unit
      t.integer :calories_per_unit

      t.timestamps
    end
  end
end
