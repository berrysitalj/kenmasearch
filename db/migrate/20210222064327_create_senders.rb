class CreateSenders < ActiveRecord::Migration[5.2]
  def change
    create_table :senders do |t|
      t.integer :category
      t.string :shopname
      t.string :yomi
      t.integer :tel1
      t.integer :tel2
      t.integer :tel3
      t.string :area
      t.string :addres
      t.string :charge
      t.integer :tel4
      t.integer :tel5
      t.integer :tel6
      t.string :chargemail
      t.string :question

      t.timestamps
    end
  end
end
