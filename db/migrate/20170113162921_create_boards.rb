class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.float :length
      t.float :width

      t.timestamps null: false
    end
  end
end
