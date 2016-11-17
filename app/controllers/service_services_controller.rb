class ServiceServicesController < ActionController::Base
  def index
      @service_user = Service_User.find_by_service_roles_id(2)
      @service_services= Service_Services.all
      puts @service_services.length
  end
end
