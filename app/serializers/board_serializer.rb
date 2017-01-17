class BoardSerializer < ActiveModel::Serializer
  attributes :id
  attributes :name
  attributes :length
  attributes :width

  def editable
    scope == object.user
  end
end
