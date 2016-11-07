require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.email { Faker::Internet.email }
    f.password { Faker::Internet.password }
  end

  factory :validincompleteformuser, parent: :user do |f|
    f.email nil
     f.password nil
  end
  factory :validformuser, parent: :user do |f|
     f.email "@@"
     f.password "SJSAJ"
  end
   factory :incompletepassword, parent: :user do |f|
     f.email "hs@ss.com"
     f.password ""
  end
  factory :wrongemail, parent: :user do |f|
     f.email "njd"
     f.password "136gdjh"
  end
   factory :invalidemail, parent: :user do |f|
    f.email nil
  end
   factory :invalidpassword, parent: :user do |f|
    f.password nil
  end
  

  factory :invalidform, parent: :user do |f|
     f.email nil
     f.password nil
  end
end
