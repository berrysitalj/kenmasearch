class ChangeDatatypeOnfootOfShops < ActiveRecord::Migration[5.2]
  def change
  	change_column :shops, :onfoot, :string
  	change_column :shops, :businessday, :string
  	change_column :shops, :businesstime1, :string
  	change_column :shops, :businesstime2, :string
  	change_column :shops, :pricelist, :string
  	change_column :shops, :reservation, :string
  	change_column :shops, :tablenum, :string
  	change_column :shops, :service, :string
  	change_column :shops, :ratio, :string
  	change_column :shops, :rule, :string
  	change_column :shops, :timeup, :string
  	change_column :shops, :opening, :string
  end
end
