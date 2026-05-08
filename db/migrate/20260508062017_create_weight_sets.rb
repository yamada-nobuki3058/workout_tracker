# frozen_string_literal: true

class CreateWeightSets < ActiveRecord::Migration[7.1]
  def change
    create_table :weight_sets do |t|
      t.references :exercise, null: false, foreign_key: true
      t.decimal :weight, precision: 5, scale: 2, null: false
      t.integer :reps, null: false
      t.integer :position, null: false

      t.timestamps
    end
  end
end
