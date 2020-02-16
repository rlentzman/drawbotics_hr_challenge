class AddSeniorityToPosition < ActiveRecord::Migration[5.2]
  def change
    add_column :positions, :seniority, :string
  end
end
