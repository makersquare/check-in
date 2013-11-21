# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

vz = PhoneNetwork.create(name:"Verizon", sms_email_suffix:"vtext.com")
att = PhoneNetwork.create(name:"AT&T", sms_email_suffix:"txt.att.net")
sprint = PhoneNetwork.create(name:"Sprint", sms_email_suffix:"messaging.sprintpcs.com")

alex = User.create(name:"Alex Levine", phone:"9782731004", image: "https://2.gravatar.com/avatar/a4af3797c372cf36817f6767cefccc98?size=400")
alex.phone_network = vz
alex.save



harsh = User.create(name:"Harsh Patel", phone:"3145371024", image: "https://0.gravatar.com/avatar/64bab54cb414e501d2c4cc4b83b1c96d?size=400")
harsh.phone_network = vz
harsh.save


clay = User.create(name:"Clay Stewart", phone:"6012913701", image: "https://0.gravatar.com/avatar/64bab54cb414e501d2c4cc4b83b1c96d?size=400", grav_email: "claytonmstewart@gmail.com")
clay.phone_network = att
clay.save