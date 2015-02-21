# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admins = Admin.create! email: 'creativelyconcise@gmail.com', password: "mc009813"

seeds  = Faq.create [
		                    {title:       'What is your coverage area?',
		                     description: 'Our coverage area is as follows:

* **Gilpin County** – the north side, to include Rollinsville, and much of the surrounding area, heading south towards County Rd 2 and on South Beaver Creek Rd
* **Boulder County** – including the Magnolia Road area, the north side of Gross Reservoir and most of the Gross Reservoir valley area, Coal Creek Heights and to the west of Wondervu where cable is not available
* We will do our best to get you service or make it available to you at the least possible cost.'},

		                    {title:       'How is our connection to the internet accomplished?',
		                     description: 'We are using a high bandwidth microwave link to a fiber optic connection as our backbone.'}, {title: 'Is our equipment affected by weather?', description: 'It possibly could be degraded by about 8% in an extremely heavy rainstorm. However, with the speed of our links, it would not be noticeable. Also, we do not live in an area that gets the amount of rain that would cause this type of degradation..'}]