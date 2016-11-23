class ServiceAddress < ActiveRecord::Base
    has_many  :service_services
    has_many  :service_users

    def self.createAddress(address)

      ServiceAddress.create!(address)
    end
end
