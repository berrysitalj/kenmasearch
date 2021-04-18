class AddArea2ToShops < ActiveRecord::Migration[5.2]
  def change
  	add_column :shop, :area2, :string
  end
end
