class NotificationSender
  def send(user, message, sender = EmailSender.new) # Depency Injection
    sender.send(user, message) if user.active?
  end
end

# ===============

class Sender
  def send(user:, message:)
    raise NotImplementedError
  end
end

class EmailSender < Sender
  def send(user:, message:)
    # implementation for Email
  end
end

class SmsSender < Sender
  def send(user:, message:)
    # implementation for SMS
  end
end

class WaSender < Sender
  def send(user:, message:)
    # implementation for WA
  end
end

sender = NotificationSender.new
sender.send(user, "Hello World", SmsSender.new)
