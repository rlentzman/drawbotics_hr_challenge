class AddReferenceToCandidate < ActiveRecord::Migration[5.2]
  def change
      add_reference :candidates, :user, index: true
  end
end
