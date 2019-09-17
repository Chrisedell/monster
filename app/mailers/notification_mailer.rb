class NotificationMailer < ApplicationMailer
  default from: "no-reply@monsterapp.com"

  def comment_added
    mail(to: "chrise.delladonna@gmail.com",
      subject: "A comment has been added to your place")
    
  end
end
