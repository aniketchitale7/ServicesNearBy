
class MyprofileController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def service_user_params


      params.require(:user_firstname)
  end
  def new
    puts "testing"
  end


  def create

    @user_service = Service_User.new
    my_hash = {'user_firstname' => params.require(:user_firstname),
               'user_lastname' => params.require(:user_lastname),
               'user_phone' => params.require(:user_phone),
               'service_roles_id' => params.require(:service_roles_id),
               'user_email' => "DUMMY",
               'user_password' => "DUMMY",
               'user_name' => "testing",
               'created_at' => "DUMMY",
               'updated_at' => "DUMMY"}
    puts my_hash
    # @user_service.user_firstname = params.require(:user_firstname)
    # @user_service.user_lastname = params.require(:user_lastname)
    # @user_service.user_phone =params.require(:user_phone)
    # @user_service.service_roles_id = params.require(:service_roles_id)
    # @user_service.user_email = "dummy"
    # @user_service.user_name = "dummy"
    # @user_service.user_password = "dummy"
    # @user_service.created_at = "25-Nov-1992"
    # @user_service.updated_at = "25-Nov-1992"
    @user_new = Service_User.create(my_hash)
  end


end