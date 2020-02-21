class CreateRecruiters < ActiveRecord::Migration[5.2]
  def change
    create_table :recruiters do |t|
      t.string :first_name
      t.string :last_name
      t.string :seniority

      t.timestamps
    end
  end
end
