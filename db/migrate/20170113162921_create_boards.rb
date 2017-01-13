class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.decimal :length
      t.decimal :width

      t.timestamps null: false
    end
  end
end
