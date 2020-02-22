class RenameEmployeesToRecruiters < ActiveRecord::Migration[5.2]
  def change
    rename_table :employees, :recruiters
  end
end
