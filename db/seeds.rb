vz = PhoneNetwork.create(name:"Verizon", sms_email_suffix:"vtext.com")
att = PhoneNetwork.create(name:"AT&T", sms_email_suffix:"txt.att.net")
tmob = PhoneNetwork.create(name:"T-Mobile", sms_email_suffix:"tmomail.net")
# sprint = PhoneNetwork.create(name:"Sprint", sms_email_suffix:"messaging.sprintpcs.com")

User.create(name:"Clay Stewart", phone:"6012913701", grav_email: "claytonmstewart@gmail.com", phone_network: att)
User.create(name:"Alex Levine", phone:"9782731004", grav_email: "a17levine@gmail.com", phone_network: vz)
User.create(name:"Harsh Patel", phone:"3145371024", grav_email: "harsh@themakersquare.com", phone_network: att)
User.create(name:"Casey Lang", phone:"5057508620", grav_email: "casey@themakersquare.com", phone_network: att)
User.create(name:"Matt Buck", phone:"8179091718", grav_email: "matt@themakersquare.com", phone_network: att)
User.create(name:"Taylor Smith", phone:"4045567288", grav_email: "taylor@themakersquare.com", phone_network: vz)
User.create(name:"Amanda Contreras", phone:"5125745307", grav_email: "amanda@themakersquare.com", phone_network: vz)
User.create(name:"Ricardo Cervantes", phone:"5126565864", grav_email: "ricardo07@gmail.com", phone_network: att)
User.create(name:"Shehzan Devani", phone:"9724087465", grav_email: "shehzan@themakersquare.com", phone_network: att)
User.create(name:"Gamble McAdam", phone:"7168630063", grav_email: "daniel.gamble.mcadam@gmail.com", phone_network: vz)
User.create(name:"Jessica Chavez", phone:"5129000219", grav_email: "jessica@themakersquare.com", phone_network: vz)
User.create(name:"Shaan Shah", phone:"6309651807", grav_email: "shahshaan@gmail.com", phone_network: att)
User.create(name:"Ravi Parikh", phone:"3144714852", grav_email: "ravi@themakersquare.com", phone_network: att)
User.create(name:"Gilbert Garza", phone:"2147274068", grav_email: "gilbert@themakersquare.com", phone_network: tmob)
User.create(name:"Mike Ornellas", phone:"2816873020", grav_email: "ornellasm@gmail.com", phone_network: att)
User.create(name:"Gene Le", phone:"5122003871", grav_email: "gene.gkl@gmail.com", phone_network: att)
User.create(name:"Joseph Thomas", phone:"8324285999", grav_email: "Joseph@themakersquare.com", phone_network: vz)



# alex = User.create(name:"Alex Levine", phone:"9782731004", image: "https://2.gravatar.com/avatar/a4af3797c372cf36817f6767cefccc98?size=400")
# alex.phone_network = vz
# alex.save

# harsh = User.create(name:"Harsh Patel", phone:"3145371024", image: "https://0.gravatar.com/avatar/64bab54cb414e501d2c4cc4b83b1c96d?size=400")
# harsh.phone_network = vz
# harsh.save

# clay = User.create(name:"Clay Stewart", phone:"6012913701", image: "https://0.gravatar.com/avatar/64bab54cb414e501d2c4cc4b83b1c96d?size=400", grav_email: "claytonmstewart@gmail.com")
# clay.phone_network = att
# clay.save