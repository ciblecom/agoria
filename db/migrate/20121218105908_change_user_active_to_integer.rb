class ChangeUserActiveToInteger < ActiveRecord::Migration
  def change
    remove_column :users, :active
    add_column :users, :active, :integer, :default => 0
  end
end
