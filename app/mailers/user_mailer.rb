class UserMailer < ActionMailer::Base
  default from: "no-reply@ensemblepourmonemploi.be"
  
  def welcome_email(user)
    mail(:to => "nicolas.delrez@cible.be", :subject => "Welcome to My Awesome Site")
  end
  
end