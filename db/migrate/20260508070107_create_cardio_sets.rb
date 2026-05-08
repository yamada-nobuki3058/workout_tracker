class CreateCardioSets < ActiveRecord::Migration[7.1]
  def change
    create_table :cardio_sets do |t|
      t.references :exercise, null: false, foreign_key: true
      t.decimal :distance
      t.integer :duration
      t.integer :position

      t.timestamps
    end
  end
end
