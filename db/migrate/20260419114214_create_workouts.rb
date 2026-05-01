# frozen_string_literal: true

class CreateWorkouts < ActiveRecord::Migration[7.1]
  def change
    create_table :workouts do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date, null: false

      t.timestamps
    end
  end
end
