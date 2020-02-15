class RenameNameInCandidates < ActiveRecord::Migration[5.2]
  def change
    rename_column :candidates, :name, :first_name
  end
end
