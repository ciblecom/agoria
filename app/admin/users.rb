ActiveAdmin.register User do
  
   index do
    column :email do |user|
      link_to user.email, admin_user_path(user)
    end
    column :firstname
    column :lastname
    column :company
    column :function
   
    column :created_at
    default_actions
  end
  
  filter :email
  filter :firstname
  filter :lastname
  
  form do |f|
    f.inputs "Options" do
      f.input :active
    end
    f.actions
  end
  
end
