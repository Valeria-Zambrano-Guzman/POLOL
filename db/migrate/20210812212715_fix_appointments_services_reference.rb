class FixAppointmentsServicesReference < ActiveRecord::Migration[6.0]
  def change
    remove_reference(:appointments, :service_id)
    add_reference(:appointments, :service, foreign_key: true)
  end
end
