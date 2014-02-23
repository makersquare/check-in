class PingMailer < ActionMailer::Base
  default from: "alfredmakersquare@gmail.com"

  def ping(ping_object)
    user = ping_object.user
    name  = ping_object.message
    message = "#{name} is waiting for you in the Congress lobby. -Alfred"
    mail(to: user.email, subject: message)
  end
end