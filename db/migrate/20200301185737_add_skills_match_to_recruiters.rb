class AddSkillsMatchToRecruiters < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'hstore'
    add_column :recruiters, :skills_match, :hstore
    add_index :recruiters, :skills_match, using: :gist
  end
end
