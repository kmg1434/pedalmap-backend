class Board < ActiveRecord::Base
  belongs_to :user
  has_many :pedals, through: :velcros
  has_many :velcros
  validates :length, numericality: true
  validates :width, numericality: true
end
