FactoryGirl.define do
  factory :service_services do |f|
    f.service_name "Billion"
    f.service_category_id 1
    f.service_user_id 1
    f.service_address_id 1
    f.phoneNo "Active"
    f.keywords "21212"
    f.service_time "open"
    f.service_price 23
    f.service_status "Active"
  end
end
