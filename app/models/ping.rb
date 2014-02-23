class Ping < ActiveRecord::Base
  belongs_to :user
  after_save :send_ping

  def send_ping
  	# send email
  	PingMailer.ping(self).deliver
  	# send sms
  	send_sms
  end

  def send_sms
    @twilio_client = Twilio::REST::Client.new(ENV['TWILIO_SID'],ENV['TWILIO_TOKEN'])
		message = "#{self.message} is waiting for you in the Congress lobby. -Alfred"
		@twilio_client.account.sms.messages.create(
			:from => "+1#{ENV['TWILIO_PHONE_NUMBER']}", 
			:to => user.phone,
			:body => message
    )
	end
end