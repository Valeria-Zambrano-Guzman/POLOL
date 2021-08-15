class DestroyCategoryFromService < ActiveRecord::Migration[6.0]
  def change
    remove_column :services, :category
    remove_column :services, :sub_category
  end
end
