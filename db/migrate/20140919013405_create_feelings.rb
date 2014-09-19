class CreateFeelings < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.integer :symptom_id, null: false
      t.integer :meal_id, null: false

      t.timestamps
    end
    add_index :feelings, :symptom_id
    add_index :feelings, :meal_id
  end
end
