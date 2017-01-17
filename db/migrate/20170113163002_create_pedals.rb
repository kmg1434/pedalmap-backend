class CreatePedals < ActiveRecord::Migration
  def change
    create_table :pedals do |t|
      t.string :name, null: false, index: { unique: true }
      t.float :length
      t.float :width

      t.timestamps null: false
    end
  end
end
