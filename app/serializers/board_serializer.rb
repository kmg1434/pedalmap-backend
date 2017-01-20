class BoardSerializer < ActiveModel::Serializer
  attributes :id

  def velcro
    object.velcros.pluck(:id)
  end

end
