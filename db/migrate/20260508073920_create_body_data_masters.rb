class CreateBodyDataMasters < ActiveRecord::Migration[7.1]
  def change
    create_table :body_data_masters do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :unit
      t.integer :position

      t.timestamps
    end
  end
end
