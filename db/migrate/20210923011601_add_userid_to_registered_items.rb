class AddUseridToRegisteredItems < ActiveRecord::Migration[5.2]
  def change
    add_column :registered_items, :userid, :string
  end
end
