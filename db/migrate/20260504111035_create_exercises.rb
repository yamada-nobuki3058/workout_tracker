class CreateExercises < ActiveRecord::Migration[7.1]
  def change
    create_table :exercises do |t|
      t.references :workout, null: false, foreign_key: true
      t.references :exercise_master, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
