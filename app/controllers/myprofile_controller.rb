class MyprofileController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index

  end
  def service_user_params
    params.require(:user_firstname)
  end


  def new
    puts "testing"
  end


  def create

    puts session[:user_emailid]
    puts session[:logged_user]
    @hashe = session[:logged_user]
    puts session[:roleid]
    @user_service = Service_User.new
    my_hash = {'user_name' => "Dummy",
               'user_firstname' => params.require(:user_firstname),
               'user_lastname' => params.require(:user_lastname),
               'user_phone' => params.require(:user_phone),
               'service_roles_id' => params.require(:service_roles_id),
               'user_email' => session[:user_emailid],
               'user_password' => "DUMMY",
               'user_name' => "testing",
               'created_at' => "25-Nov-1992",
               'updated_at' => "25-Nov-1992"}
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

    @user = Service_User.find_by_user_email(session[:user_emailid])
    puts 'inside create'
    puts @user.service_roles_id
    session[:userinfohash] =my_hash
    #session[:lastname] = @service_user.user_lastname

    if @user.service_roles_id == -1
      @user_new = Service_User.create_service_user(my_hash)
      redirect_to welcome_index_path
    else
      @user_new = Service_User.update_service_user(my_hash)
      redirect_to welcome_index_path
      # @user_new = Service_User.create(my_hash)
    end
  end


end
