class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.integer :userid
      t.string :pass
      t.string :shopname
      t.string :shoptel
      t.string :yomi
      t.string :addres1
      t.string :addres2
      t.string :area
      t.string :paidmember
      t.string :mail
      t.string :name
      t.string :tel
      t.string :station
      t.string :onfoot
      t.string :businessday
      t.string :businesstime1
      t.string :businesstime2
      t.string :pricelist
      t.string :topphoto
      t.string :agegroup
      t.string :reservation
      t.boolean :freeicon1
      t.boolean :freeicon2
      t.boolean :freeicon3
      t.boolean :freeicon4
      t.boolean :freeicon5
      t.boolean :freeicon6
      t.boolean :freeicon11
      t.boolean :freeicon12
      t.boolean :freeicon13
      t.boolean :freeicon14
      t.boolean :freeicon15
      t.boolean :freeicon16
      t.boolean :freeicon21
      t.boolean :freeicon22
      t.boolean :freeicon23
      t.boolean :freeicon24
      t.boolean :freeicon25
      t.boolean :freeicon26
      t.boolean :freeicon27
      t.boolean :paidicon1
      t.boolean :paidicon2
      t.boolean :paidicon3
      t.boolean :paidicon4
      t.string :topcomment
      t.string :comment
      t.string :photo1
      t.string :photo2
      t.string :tablenum
      t.string :tabletype
      t.string :service
      t.string :system
      t.string :ratio
      t.string :rule
      t.string :timeup
      t.string :homepage1
      t.string :homepage2
      t.string :homepage3
      t.string :homepage4
      t.string :opening

      t.timestamps
    end
  end
end
