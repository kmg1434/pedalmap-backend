class VelcroSerializer < ActiveModel::Serializer
  attributes :id, :board_id, :pedal_id

  def board
    object.board.id
  end

  def pedal
    object.pedal.id
  end
end
