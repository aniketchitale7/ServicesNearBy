class ServiceFixture < ActiveRecord::Base
    belongs_to :service_service
    belongs_to :service_user
end