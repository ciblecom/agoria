ActiveAdmin.register Calendar do
   index do
    column :name do |calendar|
      link_to calendar.name, admin_calendar_path(calendar)
    end
    column :user_id

    column :created_at
    default_actions
  end
end
