class User < ActiveRecord::Base
	belongs_to :phone_network

	def sms_email
		self.phone + "@" + self.phone_network.sms_email_suffix
	end

  def first_name
    self.name.split(' ').first
  end
end
