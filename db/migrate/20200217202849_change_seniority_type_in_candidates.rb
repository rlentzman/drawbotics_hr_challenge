class ChangeSeniorityTypeInCandidates < ActiveRecord::Migration[5.2]
  def change
    change_column :candidates, :seniority, :string
  end
end
