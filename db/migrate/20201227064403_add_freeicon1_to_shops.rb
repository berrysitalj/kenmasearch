class AddFreeicon1ToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :freeicon1, :boolean
  end
end
