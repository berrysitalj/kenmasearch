class ChangeDataShoptelShops < ActiveRecord::Migration[5.2]
  def change
  	change_column :shops, :shoptel, :string
  end
end
