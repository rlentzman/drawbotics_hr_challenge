class AddLinkedinToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :linkedin, :string
  end
end
