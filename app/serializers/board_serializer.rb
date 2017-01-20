class BoardSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :width,
             :length
end
