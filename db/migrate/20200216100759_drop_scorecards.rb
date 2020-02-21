class DropScorecards < ActiveRecord::Migration[5.2]
  def change
    drop_table :scorecards
  end
end
