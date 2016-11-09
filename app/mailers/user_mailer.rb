class UserMailer < ApplicationMailer

  def account_activation user
    @user = user
    mail to: user.email, subject: t(".Account")
  end


  def password_reset user
    @user = user
    mail to: user.email, subject: t(".Password reset")
  end
end
