class CreateExits < ActiveRecord::Migration
  def change
    create_table :exits do |t|
      # これだとinteger型になるのでカラム名を記述してstring指定
      #t.belongs_to :station, index: true
      t.string :station_id, index: true
      t.string :name
      t.string :lon
      t.string :lat
      t.string :heading
      t.timestamps
    end
  end
end
