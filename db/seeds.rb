# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

serviceAddress = [{:address_line1 => 'Hammes Appliance Repair', :address_line2 => '2254 South Riverside Drive', :address_zip => '52246',
                   :address_city => "Iowa City" ,:address_state => "IA" ,:address_country => "USA" ,:address_lattitute => 41.6297493 ,:address_longitude => -91.6109434}]



serviceCategory = [{:service_name => 'Electionic Repairs', :service_information => 'This include repair of Computers, Air Conditioners, Dryers, Televisions, Refrigerators, Others', :service_status => 'Active'}]


services_ser = [{:service_categories_id => 1 , :service_users_id => 1, :service_price => 20.0 ,
                 :service_status => 'Active' , :service_description => 'We provide repairs for Electronic Items'
                }]

service_user = [{:user_name => '' , :user_password => 1, :user_firstname => 20.0 ,
                 :user_lastname => 'Active' , :user_phone => 'We provide repairs for Electronic Items' ,
                 :user_email => 'servicesnearby@gmail.com' , :user_info => 'Some Information' , :user_status => 'Active',
                 :service_roles_id => 1 , :service_addresses_id => 1}]




serviceAddress.each do |serviceadd|
  Service_Address.create!(serviceadd)
end

serviceCategory.each do |servicecat|
  Service_Category.create!(servicecat)
end

services_ser.each do |serviceSer|
  Service_Service.create!(serviceSer)
end

service_user.each do |user|
  Service_User.create!(user)
end



