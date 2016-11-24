# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

service_role = [{:role_name => 'Admin' , :role_description => 'Admin'  } ,
               {:role_name => 'Vendor' , :role_description => 'Vendor' },
               {:role_name => 'User' , :role_description => 'User' }]


service_address = [{:address_line1 => '1100 Oakcrest Street', :address_line2 => 'Apt B', :address_zip => '52246',
                   :address_city => "Iowa City" ,
                   :address_state => "IA" ,:address_country => "USA" ,:address_lattitute => 41.6297493 ,
                   :address_longitude => -91.6109434} ,

                  {:address_line1 => '1100 Oakcrest Street', :address_line2 => 'Apt C', :address_zip => '52246',
                   :address_city => "Iowa City" ,
                   :address_state => "IA" ,:address_country => "USA" ,:address_lattitute => 41.6297493 ,
                   :address_longitude => -91.6109434} ,

                  {:address_line1 => '1100 Oakcrest Street', :address_line2 => 'Apt D', :address_zip => '52246',
                   :address_city => "Iowa City" ,
                   :address_state => "IA" ,:address_country => "USA" ,:address_lattitute => 41.6297493 ,
                   :address_longitude => -91.6109434}
]


service_user = [{:user_firstname => 'Services' ,
                 :user_lastname => 'NearMe' , :user_phone => '3192375499' ,
                 :user_email => 'servicesnearby@gmail.com' , :user_info => 'I am Awesome' , :user_status => 'Active',
                 :service_role_id => 2, :service_address_id => 1}

                # {:user_name => 'ashrivastava', :user_firstname => 'Ankur' ,
                #  :user_lastname => 'Shrivastava' , :user_phone => '3192375499' ,
                #  :user_email => 'shrivastava.ankur1190@gmail.com' , :user_info => 'I am Dude' , :user_status => 'Active',
                #  :service_roles_id => 3, :service_addresses_id => 2} ,
                #
                # {:user_name => 'ajinkya', :user_firstname => 'Ajinkya' ,
                #  :user_lastname => 'Kulkurni' , :user_phone => '3192375499' ,
                #  :user_email => 'ajinkya.kulkarni1102@gmail.com' , :user_info => 'I am Madrid' , :user_status => 'Active',
                #  :service_roles_id => 1, :service_addresses_id => 3}
    ]


service_category = [{:service_name => 'Repairs',
                    :service_information => 'This include repair of Computers, Air Conditioners, Dryers, Televisions, Refrigerators, Others',
                    :service_status => 'Active'} ,
                   {:service_name => 'Home Decor',
                    :service_information => 'Home Furnishing Stores, Furniture Stores', :service_status => 'Active'},
                   {:service_name => 'Auto Service',
                    :service_information => 'Service Stations, Tire Repair, Towing, Body Shops, Car Washing Services, Detailing Services, Glass Repair & Replacement',
                    :service_status => 'Active'}
]




services_ser = [{:service_name => 'Stella Home Decore', :service_addresses_id => 1, :service_categories_id => 2, :service_users_id => 1,
                 :phoneNo => '31933454', :keywords => 'Home Decore,Painting,Wall Painting,Design,Furniture,wallpaper' , :service_time => 'Monday - Saturday 11:00 - 9:00',
                 :service_price => 20.0,
                 :service_status => 'Active' , :service_description => 'Home Furnishing Stores, Furniture Stores'
                } ,
                {:service_name => 'Everything Works', :service_addresses_id => 2, :service_categories_id => 1, :service_users_id => 1,
                 :phoneNo => '31933454', :keywords => 'repairs,solder,computer,ac,electronics,laptop' , :service_time => 'Monday - Saturday 11:00 - 9:00',
                 :service_price => 40.0,
                 :service_status => 'Active' , :service_description => 'This include repair of Computers, Air Conditioners, Dryers, Televisions, Refrigerators, Others',
                }]


service_role.each do |serviceadd|
  ServiceRole.create!(serviceadd)
end

service_address.each do |serviceadd|
  ServiceAddress.create!(serviceadd)
end

service_category.each do |servicecat|
  ServiceCategory.create!(servicecat)
end

service_user.each do |user|
  ServiceUser.create!(user)
end







