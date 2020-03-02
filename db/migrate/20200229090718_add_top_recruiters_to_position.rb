class AddTopRecruitersToPosition < ActiveRecord::Migration[5.2]
  def change
    add_column :positions, :top_recruiters, :text, array: true, default: []
  end
end
