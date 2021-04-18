class ChangeDataUseridToShop < ActiveRecord::Migration[5.2]
  def change
  	change_column :shop, :userid, :string
  end
end
