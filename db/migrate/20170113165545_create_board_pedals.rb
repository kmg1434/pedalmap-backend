class CreateBoardPedals < ActiveRecord::Migration
  def change
    create_table :board_pedals do |t|
      t.references :board, index: true, foreign_key: true
      t.references :pedal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
