# encoding: UTF-8
ActiveAdmin.register User do
  
   member_action :popularize do
    user = User.find(params[:id])
    if user.active == true
      user.active = false
    else
      user.active = true    
    end   
    user.save
    session[:return_to] ||= request.referer
    redirect_to(session[:return_to], :notice => "User correctement mis à jour!")
  end 
  
   index do
    column :email do |user|
      link_to user.email, admin_user_path(user)
    end
    column :firstname
    column :lastname
    column :company
    column :function
    
    column 'Actif?', :sortable => :active do |user|
      span do
        if user.active == 0
          link_to('<i class="icon-white icon-thumbs-down"></i>'.html_safe, popularize_admin_user_path(user.id), :class => "btn btn-danger", :title => "Activer")
        else
          link_to('<i class="icon-white icon-thumbs-up"></i>'.html_safe, popularize_admin_user_path(user.id), :class => "btn btn-success", :title => "Désactver")
        end  
      end  
    end
   
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
