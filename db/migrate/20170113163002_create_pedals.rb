class CreatePedals < ActiveRecord::Migration
  def change
    create_table :pedals do |t|
      t.string :name, null: false, index: { unique: true }
      t.decimal :length
      t.decimal :width

      t.timestamps null: false
    end
  end
end
