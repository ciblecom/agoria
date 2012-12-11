class AddDescriptionToCalendar < ActiveRecord::Migration
  def change
    add_column :calendars, :description, :text
    add_column :calendars, :logo, :string
  end
end
