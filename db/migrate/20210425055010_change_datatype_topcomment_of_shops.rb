class ChangeDatatypeTopcommentOfShops < ActiveRecord::Migration[5.2]
  def change
  	change_column :shops, :comment, :string
  	change_column :shops, :topcomment, :string
  	change_column :shops, :tabletype, :string
  	change_column :shops, :system, :string
  end
end
