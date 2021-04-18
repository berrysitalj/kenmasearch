class AddAreaToShop < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :area2, :string
  end
end
