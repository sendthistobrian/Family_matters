class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mother, :string
    add_column :users, :father, :string
  end
end
