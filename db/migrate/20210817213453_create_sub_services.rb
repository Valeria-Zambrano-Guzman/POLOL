class CreateSubServices < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_services do |t|
      t.string :sub_category
      t.integer :price

      t.references :service, foreign_key: true
      t.timestamps
    end
  end
end
