class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :customer, null: false, foreign_key: { to_table: 'users' }
      t.references :professional, null: false, foreign_key: { to_table: 'users' }
      t.string :status
      t.date :start_date
      t.date :end_date
      t.references :service_id, null: false, foreign_key: { to_table: 'services' }

      t.timestamps
    end
  end
end
