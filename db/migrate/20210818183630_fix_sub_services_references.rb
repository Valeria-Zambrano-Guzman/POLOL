class FixSubServicesReferences < ActiveRecord::Migration[6.0]
  def change
    remove_reference(:specialities, :service, index: true)
    remove_reference(:appointments, :service, index: true)
    add_reference(:specialities, :sub_service, index: true)
    add_reference(:appointments, :sub_service, index: true)
  end
end
