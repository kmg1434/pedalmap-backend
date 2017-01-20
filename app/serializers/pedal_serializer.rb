class PedalSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :length,
             :width,
             :link

  has_many :boards
end
