class ChangeTopRecruitersOnPositions < ActiveRecord::Migration[5.2]
  def change
    change_column :positions, :top_recruiters, :text, default: [].to_yaml
  end
end
