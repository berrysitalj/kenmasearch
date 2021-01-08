class AddCccToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :topcomment, :text
    add_column :shops, :comment, :text
    add_column :shops, :photo1, :string
    add_column :shops, :photo2, :string
    add_column :shops, :tablenum, :integer
    add_column :shops, :tabletype, :text
    add_column :shops, :service, :text
    add_column :shops, :system, :text
    add_column :shops, :ratio, :string
    add_column :shops, :rule, :text
    add_column :shops, :timeup, :string
    add_column :shops, :homepage1, :string
    add_column :shops, :homepage2, :string
    add_column :shops, :homepage3, :string
    add_column :shops, :homepage4, :string
    add_column :shops, :opening, :date
  end
end
