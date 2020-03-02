class CreateRecruiterSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :recruiter_skills do |t|
      t.references :skill, foreign_key: true
      t.references :recruiter, foreign_key: true

      t.timestamps
    end
  end
end
