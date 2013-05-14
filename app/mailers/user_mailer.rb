class UserMailer < ActionMailer::Base
  default from: "notifications@pownse.com"
  
  def welcome_email(user)
    @user = user
    email_with_name = "#{@user.name} <#{@user.email}>"
    mail(:to => email_with_name, :subject => "Welcome to Pownse")
  end
  
  def charge_email(user)
    @user = user
    @commitment = commitment
    email_with_name = "#{@user.name} <#{@user.email}>"
    mail(:to => email_with_name, :subject => "You've been charged")
  end
end
