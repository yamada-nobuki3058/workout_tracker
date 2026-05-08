class CreateWeightSets < ActiveRecord::Migration[7.1]
  def change
    create_table :weight_sets do |t|
      t.references :exercise, null: false, foreign_key: true
      t.decimal :weight
      t.integer :reps
      t.integer :position

      t.timestamps
    end
  end
end
