class AddColumnToIcon < ActiveRecord::Migration[5.2]
  def change
    add_column :icons, :userid, :string
  end
end
