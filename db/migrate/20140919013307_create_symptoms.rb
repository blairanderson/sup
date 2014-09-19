class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.string :name
      t.integer :severity

      t.timestamps
    end
    add_index :symptoms, :severity
  end
end
