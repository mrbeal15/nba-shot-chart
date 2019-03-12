class Game < ApplicationRecord
  has_many :plays
  has_many :players, :through => :plays
  has_many :shots
end
