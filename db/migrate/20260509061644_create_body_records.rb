# frozen_string_literal: true

class CreateBodyRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :body_records do |t|
      t.references :body_data_master, null: false, foreign_key: true
      t.date :date, null: false
      t.decimal :value, null: false, precision: 5, scale: 2

      t.timestamps
    end
  end
end
