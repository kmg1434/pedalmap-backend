class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :length, :width, :pedals
  attributes :user_id

  def velcro
    object.velcros.pluck(:id)
  end

  def editable
    scope == object.user
  end
end
