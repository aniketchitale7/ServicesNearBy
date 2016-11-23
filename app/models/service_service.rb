class ServiceService < ActiveRecord::Base
  belongs_to :service_address
  belongs_to :service_category
  belongs_to :service_user

end
