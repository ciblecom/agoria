class UserMailer < ActionMailer::Base
  default from: "no-reply@ensemblepourmonemploi.be"
  
  def welcome_email(user)
    mail(:to => "nicolas.delrez@cible.be", :subject => "Nouvelle inscription sur ensemblepourmonemploi.be")
  end
  
  def active_email(user)
    mail(:to => user.email, :subject => "Votre inscription sur ensemblepourmonemploi.be")
  end
  
end
