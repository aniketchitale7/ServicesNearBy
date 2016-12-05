class ServiceReview < ActiveRecord::Base
  t.belongs_to :service_service, null: false
  t.belongs_to :service_user, null: false

end