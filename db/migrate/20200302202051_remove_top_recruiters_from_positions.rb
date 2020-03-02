class RemoveTopRecruitersFromPositions < ActiveRecord::Migration[5.2]
  def change
    remove_column :positions, :top_recruiters
  end
end
