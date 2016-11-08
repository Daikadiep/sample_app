class UserMailer < ApplicationMailer

  def account_activation user
    @user = user
    mail to: user.email, subject: t(".Account activation")
  end


  def password_reset
    @greeting = t(".Hi")

    mail to: ".to@example.org"
  end
end
