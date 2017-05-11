class NotificationMailer < ApplicationMailer
  default from: "no-reply@chowster.com"

  def comment_added
    mail(to: "angella888@gmail.com",
          subject: "A comment has been added to your place")
  end
end
