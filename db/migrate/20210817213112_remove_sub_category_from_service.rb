class RemoveSubCategoryFromService < ActiveRecord::Migration[6.0]
  def change
    remove_column :services, :sub_category
    remove_column :services, :price
  end
end
