class AddMonthToCalendar < ActiveRecord::Migration
  def change
    add_column :calendars, :month, :integer
  end
end
