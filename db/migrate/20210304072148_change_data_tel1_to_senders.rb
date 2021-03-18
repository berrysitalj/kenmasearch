class ChangeDataTel1ToSenders < ActiveRecord::Migration[5.2]
  def change
  	change_column :senders, :tel1, :string
  	change_column :senders, :tel2, :string
  	change_column :senders, :tel3, :string
  	change_column :senders, :tel4, :string
  	change_column :senders, :tel5, :string
  	change_column :senders, :tel6, :string
  end
end
