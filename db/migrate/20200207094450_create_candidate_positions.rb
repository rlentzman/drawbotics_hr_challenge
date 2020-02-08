class CreateCandidatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :candidate_positions do |t|
      t.references :candidate, foreign_key: true
      t.references :position, foreign_key: true

      t.timestamps
    end
  end
end
