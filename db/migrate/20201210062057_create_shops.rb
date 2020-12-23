class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :pass
      t.string :shopname
      t.integer :shoptel
      t.string :yomi
      t.string :addres1
      t.string :addres2
      t.string :area
      t.boolean :paidmember

      t.timestamps
    end
  end
end
