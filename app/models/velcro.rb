class Velcro < ActiveRecord::Base
  belongs_to :board, inverse_of: :velcro
  belongs_to :pedal, inverse_of: :velcro
end
