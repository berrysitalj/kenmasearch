class CreateIcons < ActiveRecord::Migration[5.2]
  def change
    create_table :icons do |t|
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

      t.timestamps
    end
  end
end
