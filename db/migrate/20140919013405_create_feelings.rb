class CreateFeelings < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.integer :symptom_id

      t.timestamps
    end
    add_index :feelings, :symptom_id
  end
end
