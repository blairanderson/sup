class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :type_cd

      t.timestamps
    end
    add_index :meals, :type_cd
  end
end
