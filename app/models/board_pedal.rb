class BoardPedal < ActiveRecord::Base
  belongs_to :board
  belongs_to :pedal
end
