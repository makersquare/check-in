class Ping < ActiveRecord::Base
  belongs_to :user
  after_save :send_ping

  def send_ping
  	PingMailer.ping(self).deliver
  end

end