class RemoveSkillsMatchFromRecruiters < ActiveRecord::Migration[5.2]
  def change
    remove_column :recruiters, :skills_match
  end
end
