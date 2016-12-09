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


service_address = [{:address => '1100 Oakcrest Street', :landmark => 'Apt B',:address_lattitute => 41.6297493 ,
                   :address_longitude => -91.6109434} ,

                  {:address => '1100 Oakcrest Street', :landmark => 'Apt C', :address_lattitute => 41.6297493 ,
                   :address_longitude => -91.6109434} ,

                  {:address => '1100 Oakcrest Street', :landmark => 'Apt D',:address_lattitute => 41.6297493 ,
                   :address_longitude => -91.6109434}
]



user = [{:email => 'user.inactive@gmail.com', :password => 'kanna91221', :confirmed_at => '2016-12-08 21:59:04.204878'},
        {:email => 'user.active@gmail.com', :password => 'kanna91221', :confirmed_at => '2016-12-08 21:59:04.204878'},
        {:email => 'admin.inactive@gmail.com', :password => 'kanna91221', :confirmed_at => '2016-12-08 21:59:04.204878'},
        {:email => 'admin.active@gmail.com', :password => 'kanna91221', :confirmed_at => '2016-12-08 21:59:04.204878'},
        {:email => 'vendor.active@gmail.com', :password => 'kanna91221', :confirmed_at => '2016-12-08 21:59:04.204878'},
        {:email => 'vendor.inactive@gmail.com', :password => 'kanna91221', :confirmed_at => '2016-12-08 21:59:04.204878'},
        {:email => 'user.pending@gmail.com', :password => 'kanna91221', :confirmed_at => '2016-12-08 21:59:04.204878'},
        {:email => 'first.time@gmail.com', :password => 'kanna91221' , :confirmed_at => '2016-12-08 21:59:04.204878'}
]


service_user =                   [{:user_firstname => 'Services' ,
                           :user_lastname => 'NearMe' , :user_phone => '3192375499' ,
                           :user_email => 'servicesnearby@gmail.com' , :user_info => 'I am Awesome' , :user_status => 'Active',
                           :service_role_id => 2, :service_address_id => 1},

                          { :user_firstname => 'Ankur' ,
                           :user_lastname => 'Shrivastava' , :user_phone => '3192375499' ,
                           :user_email => 'shrivastava.ankur1190@gmail.com' , :user_info => 'I am Dude' , :user_status => 'Active',
                           :service_role_id => 3, :service_address_id => 2},

                          {:user_firstname => 'Ajinkya' ,
                           :user_lastname => 'Kulkurni' , :user_phone => '3192375499' ,
                           :user_email => 'ajinkya.kulkarni1102@gmail.com' , :user_info => 'I am Madrid' , :user_status => 'Active',
                           :service_role_id => 1, :service_address_id => 3},

                           {:user_firstname => 'Admin' ,
                            :user_lastname => 'Active' , :user_phone => '3192375499' ,
                            :user_email => 'admin.active@gmail.com' , :user_info => 'I am Madrid' , :user_status => 'Active',
                            :service_role_id => 1, :service_address_id => 1},

                           {:user_firstname => 'Admin' ,
                            :user_lastname => 'Inactive' , :user_phone => '3192375499' ,
                            :user_email => 'admin.inactive@gmail.com' , :user_info => 'I am Madrid' , :user_status => 'Inactive',
                            :service_role_id => 1, :service_address_id => 1},

                           {:user_firstname => 'User' ,
                            :user_lastname => 'Active' , :user_phone => '3192375499' ,
                            :user_email => 'user.active@gmail.com' , :user_info => 'I am Madrid' , :user_status => 'Active',
                            :service_role_id => 3, :service_address_id => 1},

                           {:user_firstname => 'User' ,
                            :user_lastname => 'Inactive' , :user_phone => '3192375499' ,
                            :user_email => 'user.inactive@gmail.com' , :user_info => 'I am Madrid' , :user_status => 'Inactive',
                            :service_role_id => 3, :service_address_id => 1},

                           {:user_firstname => 'Vendor' ,
                            :user_lastname => 'Active' , :user_phone => '3192375499' ,
                            :user_email => 'vendor.active@gmail.com' , :user_info => 'I am Madrid' , :user_status => 'Active',
                            :service_role_id => 2, :service_address_id => 1},

                           {:user_firstname => 'Vendor' ,
                            :user_lastname => 'Inactive' , :user_phone => '3192375499' ,
                            :user_email => 'vendor.inactive@gmail.com' , :user_info => 'I am Madrid' , :user_status => 'Inactive',
                            :service_role_id => 2, :service_address_id => 1},

                           {:user_firstname => 'User' ,
                            :user_lastname => 'Pending' , :user_phone => '3192375499' ,
                            :user_email => 'user.pending@gmail.com' , :user_info => 'I am Madrid' , :user_status => 'Pending',
                            :service_role_id => 3, :service_address_id => 1}

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




services_ser = [{:service_name => 'Stella Home Decore', :service_address_id => 1, :service_category_id => 2, :service_user_id => 1,
                 :phoneNo => '31933454', :keywords => 'Home Decore,Painting,Wall Painting,Design,Furniture,wallpaper' , :service_time => 'Monday - Saturday 11:00 - 9:00',
                 :service_price => 20.0,
                 :service_status => 'Active' , :service_description => 'Home Furnishing Stores, Furniture Stores'
                } ,
                {:service_name => 'Everything Works', :service_address_id => 2, :service_category_id => 1, :service_user_id => 1,
                 :phoneNo => '31933454', :keywords => 'repairs,solder,computer,ac,electronics,laptop' , :service_time => 'Monday - Saturday 11:00 - 9:00',
                 :service_price => 40.0,
                 :service_status => 'Active' , :service_description => 'This include repair of Computers, Air Conditioners, Dryers, Televisions, Refrigerators, Others',
                },
                {:service_name => 'Active Service', :service_address_id => 2, :service_category_id => 1, :service_user_id => 1,
                 :phoneNo => '31933454', :keywords => 'repairs,solder,computer,ac,electronics,laptop' , :service_time => 'Monday - Saturday 11:00 - 9:00',
                 :service_price => 40.0,
                 :service_status => 'Active' , :service_description => 'This include repair of Computers, Air Conditioners, Dryers, Televisions, Refrigerators, Others',
                },
                {:service_name => 'Inactive Service', :service_address_id => 2, :service_category_id => 1, :service_user_id => 1,
                 :phoneNo => '31933454', :keywords => 'repairs,solder,computer,ac,electronics,laptop' , :service_time => 'Monday - Saturday 11:00 - 9:00',
                 :service_price => 40.0,
                 :service_status => 'Inactive' , :service_description => 'This include repair of Computers, Air Conditioners, Dryers, Televisions, Refrigerators, Others',
                },
                {:service_name => 'Pending Service', :service_address_id => 2, :service_category_id => 1, :service_user_id => 1,
                 :phoneNo => '31933454', :keywords => 'repairs,solder,computer,ac,electronics,laptop' , :service_time => 'Monday - Saturday 11:00 - 9:00',
                 :service_price => 40.0,
                 :service_status => 'Pending' , :service_description => 'This include repair of Computers, Air Conditioners, Dryers, Televisions, Refrigerators, Others',
                }]


services_fix = [{:service_user_id => 1, :service_service_id => 1, :completed => "Done"}]

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


services_ser.each do |user|
  ServiceService.create!(user)
end



user.each do |user|
  User.create!(user)
end

services_fix.each do |user|
  ServiceFixture.create!(user)
end
