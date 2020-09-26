class NotificationSender
  def send(user, message)
    EmailSender.send(user, message) if user.active?
  end
end
