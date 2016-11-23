class ServiceAddress < ActiveRecord::Base
    has_many  :service_services
    has_many  :service_users

end
