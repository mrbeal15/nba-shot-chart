class Shot < Play
  self.table_name="shots"

  belongs_to :player
  belongs_to :game
end
