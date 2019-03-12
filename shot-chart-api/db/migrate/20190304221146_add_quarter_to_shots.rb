class AddQuarterToShots < ActiveRecord::Migration[5.2]
  def change
    add_column :shots, :quarter, :integer
  end
end
