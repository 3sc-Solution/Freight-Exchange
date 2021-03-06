# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
  Role.create(name: "Truck Owner")
  Role.create(name: "Load Provider")
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   # City.create(city_name: 'Ahmednagar',city_state: "Maharashtra")
#   City.create(city_name: 'Akola',city_state: "Maharashtra")
#   City.create(city_name: 'Amravati',city_state: "Maharashtra")
#   City.create(city_name: 'Aurangabad',city_state: "Maharashtra")
#   City.create(city_name: 'Baramati',city_state: "Maharashtra")
#   City.create(city_name: 'Chalisgaon',city_state: "Maharashtra")
#   City.create(city_name: 'Chinchani',city_state: "Maharashtra")
#   City.create(city_name: 'Devgarh',city_state: "Maharashtra")
#   City.create(city_name: 'Dhule',city_state: "Maharashtra")
#   City.create(city_name: 'Dombivli',city_state: "Maharashtra")
#   City.create(city_name: 'Durgapur',city_state: "Maharashtra")
#   City.create(city_name: 'Ichalkaranji',city_state: "Maharashtra")
#   City.create(city_name: 'Jalna',city_state: "Maharashtra")
#   City.create(city_name: 'Kalyan',city_state: "Maharashtra")
#   City.create(city_name: 'Latur',city_state: "Maharashtra")
#   City.create(city_name: 'Loha',city_state: "Maharashtra")
#   City.create(city_name: 'Lonar',city_state: "Maharashtra")
#   City.create(city_name: 'Lonavla',city_state: "Maharashtra")
#   City.create(city_name: 'Mahad',city_state: "Maharashtra")
#   City.create(city_name: 'Mahuli',city_state: "Maharashtra")
#   City.create(city_name: 'Malegaon',city_state: "Maharashtra")
#   City.create(city_name: 'Malkapur',city_state: "Maharashtra")
#   City.create(city_name: 'Manchar',city_state: "Maharashtra")
#   City.create(city_name: 'Mangalvedhe',city_state: "Maharashtra")
#   City.create(city_name: 'Mangrulpir',city_state: "Maharashtra")
#   City.create(city_name: 'Manjlegaon',city_state: "Maharashtra")
#   City.create(city_name: 'Manmad',city_state: "Maharashtra")
#   City.create(city_name: 'Manwath',city_state: "Maharashtra")
#   City.create(city_name: 'Mehkar',city_state: "Maharashtra")
#   City.create(city_name: 'Mhaswad',city_state: "Maharashtra")
#   City.create(city_name: 'Miraj',city_state: "Maharashtra")
#   City.create(city_name: 'Morshi',city_state: "Maharashtra")
#   City.create(city_name: 'Mukhed',city_state: "Maharashtra")
#   City.create(city_name: 'Mul',city_state: "Maharashtra")
#   City.create(city_name: 'Mumbai',city_state: "Maharashtra")
#   City.create(city_name: 'Murtijapur',city_state: "Maharashtra")
#   City.create(city_name: 'Nagpur',city_state: "Maharashtra")
#   City.create(city_name: 'Nalasopara',city_state: "Maharashtra")
#   City.create(city_name: 'Nanded-Waghala',city_state: "Maharashtra")
#   City.create(city_name: 'Nandgaon',city_state: "Maharashtra")
#   City.create(city_name: 'Nandura',city_state: "Maharashtra")
#   City.create(city_name: 'Narkhed',city_state: "Maharashtra")
#   City.create(city_name: 'Nashik',city_state: "Maharashtra")
#   City.create(city_name: 'Nashik',city_state: "Maharashtra")
#   City.create(city_name: 'Nawapur',city_state: "Maharashtra")
#   City.create(city_name: 'Nilanga',city_state: "Maharashtra")
#   City.create(city_name: 'Osmanabad',city_state: "Maharashtra")
#   City.create(city_name: 'Ozar',city_state: "Maharashtra")
#   City.create(city_name: 'Pachora',city_state: "Maharashtra")
#   City.create(city_name: 'Paithan',city_state: "Maharashtra")
#   City.create(city_name: 'Nandurbar',city_state: "Maharashtra")
#   City.create(city_name: 'Palghar',city_state: "Maharashtra")
#   City.create(city_name: 'Pandharkaoda',city_state: "Maharashtra")
#   City.create(city_name: 'Pandharpur',city_state: "Maharashtra")
#   City.create(city_name: 'Panvel',city_state: "Maharashtra")
#   City.create(city_name: 'Parbhani',city_state: "Maharashtra")
#   City.create(city_name: 'Parli',city_state: "Maharashtra")
#   City.create(city_name: 'Parola',city_state: "Maharashtra")
#   City.create(city_name: 'Partur',city_state: "Maharashtra")
#   City.create(city_name: 'Pathardi',city_state: "Maharashtra")
#   City.create(city_name: 'Pathri',city_state: "Maharashtra")
#   City.create(city_name: 'Patur',city_state: "Maharashtra")
#   City.create(city_name: 'Pauni',city_state: "Maharashtra")
#   City.create(city_name: 'Pen',city_state: "Maharashtra")
#   City.create(city_name: 'Phaltan',city_state: "Maharashtra")
#   City.create(city_name: 'Pulgaon',city_state: "Maharashtra")
#   City.create(city_name: 'Pune',city_state: "Maharashtra")
#   City.create(city_name: 'Purna',city_state: "Maharashtra")
#   City.create(city_name: 'Pusad',city_state: "Maharashtra")
#   City.create(city_name: 'Rahuri',city_state: "Maharashtra")
#   City.create(city_name: 'Rajura',city_state: "Maharashtra")
#   City.create(city_name: 'Ramtek',city_state: "Maharashtra")
# Truck.create(city_name: 'Ahmednagar',city_state: "Maharashtra")


Load.create!("load_type"=>"Full load",
   "load_from"=>"Indore",
   "load_to"=>"Pune",
   "load_material"=>"Mill Jute Oil",
   "load_weight"=>"Upto 5 mt",
   "load_truck_type"=>"Truck 24/25mt   / 14 wheel",
   "load_no_of_truck"=>"3",
   "load_schedule_date"=>"2018-03-29",
   "expected_price"=>"3456789",
   "source_pin_code"=>"Delhi",
   "destination_pin_code"=>"Pune",
   "sharing"=>"1",
   "user_id"=> 19
   )

   Load.create!("load_type"=>"Full load",
   "load_from"=>"Rajkot",
   "load_to"=>"indore",
   "load_material"=>"Mill Jute Oil",
   "load_weight"=>"Upto 5 mt",
   "load_truck_type"=>"Containers close body 24 feet",
   "load_no_of_truck"=>"3",
   "load_schedule_date"=>"2018-03-29",
   "expected_price"=>"123456",
   "source_pin_code"=>"Rajkot",
   "destination_pin_code"=>"Indore",
   "sharing"=>"1",
   "user_id"=> 19
   )

Load.create!("load_type"=>"Full load",
  "load_from"=>"Indore",
  "load_to"=>"Pune",
  "load_material"=>"Mill Jute Oil",
  "load_weight"=>"Upto 5 mt",
  "load_truck_type"=>"Truck 24/25mt   / 14 wheel",
  "load_no_of_truck"=>"3",
  "load_schedule_date"=>"2018-03-30",
  "expected_price"=>"50000",
  "source_pin_code"=>"Indore",
  "destination_pin_code"=>"Pune",
  "sharing"=>"0",
  "user_id"=> 19
)