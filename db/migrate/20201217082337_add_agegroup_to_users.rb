class AddAgegroupToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :agegroup, :string
  end
end
