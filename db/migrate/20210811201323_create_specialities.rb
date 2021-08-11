class CreateSpecialities < ActiveRecord::Migration[6.0]
  def change
    create_table :specialities do |t|
      t.references :professional, null: false, foreign_key: { to_table: 'users' }
      t.references :service, null: false, foreign_key: { to_table: 'services' }
      t.text :description

      t.timestamps
    end
  end
end
