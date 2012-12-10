class AddLastameFirstnameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lastname, :string
    add_column :users, :firstname, :string
    add_column :users, :company, :string
    add_column :users, :function, :string
    add_column :users, :optin, :boolean, :default => 0
  end
end
