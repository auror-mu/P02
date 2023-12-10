class CreateMeasures < ActiveRecord::Migration[7.0]
  def change
    create_table :measures do |t|
      t.datetime :@timestamp
      t.string :measure_type
      t.float :measure_float
      t.integer :room_id

      t.timestamps
    end
  end
end
