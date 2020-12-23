class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.text :topcomment
      t.text :comment
      t.string :photo1
      t.string :photo2
      t.integer :tablenum
      t.text :tabletype
      t.text :service
      t.text :system
      t.string :ratio
      t.text :rule
      t.string :timeup
      t.string :homepage1
      t.string :homepage2
      t.string :homepage3
      t.string :homepage4
      t.date :opening
      t.string :userid

      t.timestamps
    end
  end
end
