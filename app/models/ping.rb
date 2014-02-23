class Ping < ActiveRecord::Base
  belongs_to :user
  after_save :send_ping

  @twilio_client = Twilio::REST::Client.new(ENV['TWILIO_SID'],ENV['TWILIO_TOKEN'])

  def send_ping
  	# send email
  	PingMailer.ping(self).deliver
  	# send sms
  	send_sms
  end

  def send_sms
		message = "#{self.message} is waiting for you in the Congress lobby. -Alfred"
		@twilio_client.account.sms.messages.create(
			:from => "+1#{ENV['TWILIO_PHONE_NUMBER']}", 
			:to => user.phone,
			:body => message
    )
	end
end