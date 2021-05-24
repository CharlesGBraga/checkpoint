class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.timestamp :appointments
      t.references :type, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
