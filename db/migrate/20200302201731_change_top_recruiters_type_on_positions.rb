class ChangeTopRecruitersTypeOnPositions < ActiveRecord::Migration[5.2]
  def change
    change_column :positions, :top_recruiters, :text, array: true
  end
end
