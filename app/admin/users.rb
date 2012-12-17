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
    UserMailer.active_email(user).deliver
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
        if user.active == false
          link_to('Valider', popularize_admin_user_path(user.id), :title => "Valider")
        else
          link_to('Désactver', popularize_admin_user_path(user.id), :title => "Désactver")
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
