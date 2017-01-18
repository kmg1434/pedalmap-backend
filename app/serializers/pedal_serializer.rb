class PedalSerializer < ActiveModel::Serializer
  attributes :id, :name, :length, :width, :link, :boards

  def velcros
    object.velcros.pluck(:id)
  end

  def editable
    scope == object.user
  end
end
