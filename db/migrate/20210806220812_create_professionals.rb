class CreateProfessionals < ActiveRecord::Migration[6.0]
  def change
    create_table :professionals do |t|
      t.string :name
      t.string :last_name
      t.integer :age
      t.string :email
      t.date :date_of_birth
      t.integer :phone
      t.string :city
      t.string :address
      t.string :occupation
      t.boolean :certification
      t.text :description

      t.timestamps
    end
  end
end
