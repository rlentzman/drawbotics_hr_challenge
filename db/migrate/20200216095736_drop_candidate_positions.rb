class DropCandidatePositions < ActiveRecord::Migration[5.2]
  def change
    drop_table :candidate_positions
  end
end
