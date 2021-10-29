class AddDetailsToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :random_url, :string
    add_column :comments, :name, :string
    add_column :comments, :mail, :string
    add_column :comments, :tel, :string
    add_column :comments, :shopname, :string
    add_column :comments, :yomi, :string
    add_column :comments, :shoptel, :string
    add_column :comments, :addres, :string
    add_column :comments, :pass, :string
    add_column :comments, :businessday, :string
    add_column :comments, :businesstime1, :string
    add_column :comments, :pricelist, :string
    add_column :comments, :topphoto, :string
    add_column :comments, :photo1, :string
    add_column :comments, :photo2, :string
    add_column :comments, :agegroup, :string
    add_column :comments, :reservation, :string
    add_column :comments, :topcomment, :string
    add_column :comments, :comment, :string
    add_column :comments, :tablenum, :string
    add_column :comments, :tabletype, :string
    add_column :comments, :service, :string
    add_column :comments, :system, :string
    add_column :comments, :ratio, :string
    add_column :comments, :rule, :string
    add_column :comments, :timeup, :string
    add_column :comments, :homepage1, :string
    add_column :comments, :homepage2, :string
    add_column :comments, :homepage3, :string
    add_column :comments, :homepage4, :string
    add_column :comments, :opening, :string
  end
end
