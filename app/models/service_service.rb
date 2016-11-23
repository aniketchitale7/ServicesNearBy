class Service_Service < ActiveRecord::Base
  belongs_to :service_addresses
  belongs_to :service_categories
  belongs_to :service_users

end
