class CreateCandidateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :candidate_skills do |t|
      t.references :candidate, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
