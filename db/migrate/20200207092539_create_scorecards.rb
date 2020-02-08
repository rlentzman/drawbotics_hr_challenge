class CreateScorecards < ActiveRecord::Migration[5.2]
  def change
    create_table :scorecards do |t|
      t.references :candidate, foreign_key: true
      t.references :user, foreign_key: true
      t.text :experience
      t.integer :score
      t.references :position, foreign_key: true
      t.text :interest_in_the_company

      t.timestamps
    end
  end
end
