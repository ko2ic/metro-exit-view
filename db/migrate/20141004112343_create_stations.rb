class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations, id: false do |t|
      t.string :station_id, null: false
      # これだとinteger型になるのでカラム名を記述してstring指定
      #t.belongs_to :line
      t.string :line_id
      t.string :name
      t.timestamps
    end
    add_index :stations, :station_id, unique: true
  end
end
