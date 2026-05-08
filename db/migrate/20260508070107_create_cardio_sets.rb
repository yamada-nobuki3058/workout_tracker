# frozen_string_literal: true

class CreateCardioSets < ActiveRecord::Migration[7.1]
  def change
    create_table :cardio_sets do |t|
      t.references :exercise, null: false, foreign_key: true
      t.decimal :distance, precision: 6, scale: 3, null: false
      t.integer :duration, null: false
      t.integer :position, null: false

      t.timestamps
    end
  end
end
