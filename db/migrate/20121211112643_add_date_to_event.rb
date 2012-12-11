class AddDateToEvent < ActiveRecord::Migration
  def change
    add_column :events, :datee, :datetime
  end
end
