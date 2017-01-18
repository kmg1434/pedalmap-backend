class Pedal < ActiveRecord::Base
  has_many :boards, through: :velcros
  has_many :velcros
  validates :length, numericality: true
  validates :width, numericality: true
end
