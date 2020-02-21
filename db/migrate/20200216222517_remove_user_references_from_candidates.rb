class RemoveUserReferencesFromCandidates < ActiveRecord::Migration[5.2]
  def change
    remove_reference :candidates, :user, index: true
  end
end
