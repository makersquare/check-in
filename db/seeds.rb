# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


alex = User.create(name:"Alex Levine", phone:"9782731004")

vz = PhoneNetwork.create(name:"Verizon", sms_email_suffix:"vtext.com")
att = PhoneNetwork.create(name:"AT&T", sms_email_suffix:"txt.att.net")
sprint = PhoneNetwork.create(name:"Sprint", sms_email_suffix:"messaging.sprintpcs.com")

alex.phone_network = vz
alex.save