# frozen_string_literal: true

class CreateBodyDataMasters < ActiveRecord::Migration[7.1]
  def change
    create_table :body_data_masters do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.string :unit, null: false
      t.integer :position, null: false

      t.timestamps
    end
  end
end
