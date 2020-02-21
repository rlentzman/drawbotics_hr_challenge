class AddSeniorityToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :seniority, :integer
  end
end
