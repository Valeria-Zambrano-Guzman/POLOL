class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.integer :category
      t.decimal :price
      t.integer :sub_category

      t.timestamps
    end
  end
end
