class CreateSenders < ActiveRecord::Migration[5.2]
  def change
    create_table :senders do |t|
      t.integer :category
      t.string :shopname
      t.string :yomi
      t.string :tel1
      t.string :tel2
      t.string :tel3
      t.string :area
      t.string :addres
      t.string :charge
      t.string :tel4
      t.string :tel5
      t.string :tel6
      t.string :chargemail
      t.string :question

      t.timestamps
    end
  end
end
