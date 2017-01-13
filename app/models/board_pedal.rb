class BoardPedal < ActiveRecord::Base
  belongs_to :board, inverse_of: :board_pedal
  belongs_to :pedal, inverse_of: :board_pedal
end
