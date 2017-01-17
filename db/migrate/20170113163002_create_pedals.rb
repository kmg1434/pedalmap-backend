class CreatePedals < ActiveRecord::Migration
  def change
    create_table :pedals do |t|
      t.string :name, null: false, index: { unique: true }
      t.float :length
      t.float :width
      t.string :link # will hold the URL for the image of the pedal

      t.timestamps null: false
    end
  end
end
