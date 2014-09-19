class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.string :name, null: false, default: ""
      t.integer :severity, null: false, default: 0
      t.integer :meal_id, null: false

      t.timestamps
    end
    add_index :symptoms, :severity
    add_index :symptoms, :meal_id
  end
end
