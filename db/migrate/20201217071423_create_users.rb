class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :mail
      t.string :name
      t.string :tel
      t.string :station
      t.integer :onfoot
      t.text :businessday
      t.time :businesstime1
      t.time :businesstime2
      t.string :pricelist
      t.string :topphoto
      t.boolean :reservation

      t.timestamps
    end
  end
end
