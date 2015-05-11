# line_idをPKにするためにid生成をfalseにして、line_idをnot nullでstring型にして、Unique制約を付けた
class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines, id: false do |t|
      t.string :line_id, null: false
     # t.belongs_to :station
      t.string :name
      t.timestamps
    end
    add_index :lines, :line_id, unique: true
  end
end
