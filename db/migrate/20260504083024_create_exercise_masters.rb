# frozen_string_literal: true

class CreateExerciseMasters < ActiveRecord::Migration[7.1]
  def change
    create_table :exercise_masters do |t|
      t.references :user, null: true, foreign_key: true
      t.string :name, null: false
      t.boolean :is_unilateral, default: false, null: false
      t.integer :exercise_type, null: false

      t.timestamps
    end
  end
end
