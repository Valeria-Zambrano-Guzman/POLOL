class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :customer, null: false, foreign_key: { to_table: 'users' }
      t.references :professional, null: false, foreign_key: { to_table: 'users' }
      t.integer :calification
      t.text :description

      t.timestamps
    end
  end
end
