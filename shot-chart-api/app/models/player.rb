class Player < ApplicationRecord
  has_many :plays
  has_many :shots
end
