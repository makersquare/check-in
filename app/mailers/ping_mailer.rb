class PingMailer < ActionMailer::Base
  default from: "alfredmakersquare@gmail.com"

  def ping(ping_object)
    @user = ping_object.user
    @message  = ping_object.message
    mail(to: @user.sms_email, subject: "")
  end
end
