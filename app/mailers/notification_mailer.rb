class NotificationMailer < ApplicationMailer
  default from: "no-reply@chowster.com"

  def comment_added(comment)
    @place = comment.place

    if @place && @place.user
      @place_owner = @place.user
      mail(to: @place_owner.email,
          subject: "A comment has been added to #{@place.name}")
    end 
  end
end