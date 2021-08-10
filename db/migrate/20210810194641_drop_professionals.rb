class DropProfessionals < ActiveRecord::Migration[6.0]
  def change
    drop_table :professionals
  end
end
