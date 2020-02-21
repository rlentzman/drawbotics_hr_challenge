class AddScoreToApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :score, :integer
  end
end
