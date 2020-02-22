class RenameRecruitersToEmployees < ActiveRecord::Migration[5.2]
  def change
    rename_table :recruiters, :employees
  end
end

