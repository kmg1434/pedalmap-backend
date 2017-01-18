class CreateVelcro < ActiveRecord::Migration
  def change
    create_table :velcros do |t|
      t.references :board, index: true, foreign_key: true
      t.references :pedal, index: true, foreign_key: true
    end
  end
end
