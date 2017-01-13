class Pedal < ActiveRecord::Base
  has_many :boards
  validates :length, numericality: true
  validates :width, numericality: true
end
