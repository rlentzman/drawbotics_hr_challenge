class AddReferencesToApplications < ActiveRecord::Migration[5.2]
  def change
    add_reference :applications, :recruiter, foreign_key: true
  end
end
