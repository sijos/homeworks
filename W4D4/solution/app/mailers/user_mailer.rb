class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @url = 'http://usermailserver@crush.it'

    mail(to: user, subject: 'Thanks for joining 99 Cats!')
  end
end
