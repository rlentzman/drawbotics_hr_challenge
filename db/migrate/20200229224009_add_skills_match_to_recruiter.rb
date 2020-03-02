class AddSkillsMatchToRecruiter < ActiveRecord::Migration[5.2]
  def change
    add_column :recruiters, :skills_match, :text
  end
end

