# encoding: UTF-8
ActiveAdmin.register User do
  
   member_action :active do
    user = User.find(params[:id])
    user.active = 1
    UserMailer.active_email(user).deliver    
    user.save
    session[:return_to] ||= request.referer
    redirect_to(session[:return_to], :notice => "User correctement validé!")
  end 
  
  member_action :refuse do
    user = User.find(params[:id])
    user.active = 2
    UserMailer.refuse_email(user).deliver    
    user.save
    session[:return_to] ||= request.referer
    redirect_to(session[:return_to], :notice => "User correctement refusé!")
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
           span link_to('Valider', active_admin_user_path(user.id), :title => "Valider") 
           span " - "
           span link_to('Refuser', refuse_admin_user_path(user.id), :title => "Refuser")
        elsif user.active == 1
          'Accepté'
        else
          'Refusé'    
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
