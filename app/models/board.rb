class Board < ActiveRecord::Base
  belongs_to :user
  has_many :pedals
  validates :length, numericality: true
  validates :width, numericality: true
end
