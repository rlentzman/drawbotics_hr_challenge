class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.references :candidate, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
