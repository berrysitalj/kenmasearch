class AddAaaToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :mail, :string
    add_column :shops, :name, :string
    add_column :shops, :tel, :string
    add_column :shops, :station, :string
    add_column :shops, :onfoot, :integer
    add_column :shops, :businessday, :text
    add_column :shops, :businesstime1, :string
    add_column :shops, :businesstime2, :string
    add_column :shops, :pricelist, :string
    add_column :shops, :topphoto, :string
    add_column :shops, :agegroup, :string
    add_column :shops, :reservation, :boolean
  end
end
