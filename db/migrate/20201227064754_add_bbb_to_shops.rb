class AddBbbToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :freeicon2, :boolean
    add_column :shops, :freeicon3, :boolean
    add_column :shops, :freeicon4, :boolean
    add_column :shops, :freeicon5, :boolean
    add_column :shops, :freeicon6, :boolean
    add_column :shops, :freeicon11, :boolean
    add_column :shops, :freeicon12, :boolean
    add_column :shops, :freeicon13, :boolean
    add_column :shops, :freeicon14, :boolean
    add_column :shops, :freeicon15, :boolean
    add_column :shops, :freeicon16, :boolean
    add_column :shops, :freeicon21, :boolean
    add_column :shops, :freeicon22, :boolean
    add_column :shops, :freeicon23, :boolean
    add_column :shops, :freeicon24, :boolean
    add_column :shops, :freeicon25, :boolean
    add_column :shops, :freeicon26, :boolean
    add_column :shops, :freeicon27, :boolean
    add_column :shops, :paidicon1, :boolean
    add_column :shops, :paidicon2, :boolean
    add_column :shops, :paidicon3, :boolean
    add_column :shops, :paidicon4, :boolean
  end
end
