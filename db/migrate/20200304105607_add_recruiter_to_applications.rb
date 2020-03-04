class AddRecruiterToApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :recruiter, :string
  end
end
