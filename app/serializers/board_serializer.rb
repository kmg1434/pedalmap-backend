class BoardSerializer < ActiveModel::Serializer
  attributes :id
  attributes :name
  attributes :length
  attributes :width
  attributes :user_id

  def editable
    scope == object.user
  end
end
