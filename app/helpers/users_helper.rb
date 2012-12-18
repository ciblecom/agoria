module UsersHelper
  
  def is_user_active
    current_user.active
  end
  
end