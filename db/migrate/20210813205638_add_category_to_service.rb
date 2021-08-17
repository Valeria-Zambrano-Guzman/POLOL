class AddCategoryToService < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :category, :string
    add_column :services, :sub_category, :string
  end
end
