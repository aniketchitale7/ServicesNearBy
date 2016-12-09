FactoryGirl.define do
  factory :service_users do |f|
    f.user_firstname "Aniket"
    f.user_lastname "Chitale"
    f.user_phone "3192345678"
    f.user_email "abc@gmail.com"
    f.user_status "Active"
    f.service_role_id 2
    f.service_address_id 1
  end
end
