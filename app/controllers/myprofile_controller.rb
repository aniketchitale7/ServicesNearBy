class MyprofileController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    #@user = ServiceUser.find_by_user_email(current_user.email)
    session[:logged_user]  = ServiceUser.find_by_user_email(current_user.email)
    #session[:loggedUserAddress] = @user.service_address
  end

  def service_user_params
    params.require(:user_firstname)
  end


  def new

  end

  def show


  end

  def edit
    id = params[:id]
    session[:userid] = params[:id]
  end

  def update
    @user = ServiceUser.find_by_user_email(current_user.email)
    puts @user.user_email
    puts @user.user_firstname
    user = Hash.new
    user["user_firstname"] = params["user_firstname"]
    user["user_lastname"] = params["user_lastname"]
    user["user_phone"] = params["user_phone"]
    puts user
    address = Hash.new
    address["address"] = params["address"]
    address["landmark"] = params["landmark"]
    address["address_lattitute"] = params["latitude"]
    address["address_longitude"] = params["longitude"]
    @user.update_attributes!(user)
    @user.service_address.update_attributes!(address)
    redirect_to welcome_index_path
  end

  def create

    address = Hash.new

    address["address"] = params["address"]
    address["landmark"] = params["landmark"]
    address["address_lattitute"] = params["latitude"]
    address["address_longitude"] = params["longitude"]

    @add = ServiceAddress.createAddress(address)
    print(@add.id)
    @roleid = ServiceRole.find_by_role_name("User")

    @user = @add.service_users.create(:user_firstname => params["user_firstname"],
                                      :user_lastname => params["user_lastname"],
                                      :user_phone => params["user_phone"],
                                      :user_email => current_user.email, :user_status => 'Active' ,
                                      :service_role_id => @roleid.id
    )
    session[:logged_user] = @user

    redirect_to welcome_index_path

  end

  def requestvendoraccount

    if session[:logged_user] != nil and session[:roleid] == 3 and session[:logged_user]["user_status"] == "Pending"
      @accountRequested = true
    else
      @accountRequested = false;
    end
  end


  def servicerequests
    if session[:logged_user] != nil
      @loggedUser = session[:logged_user]
      @servicefixtures = ServiceFixture.joins(:service_service).where(service_services: {service_user_id: @loggedUser["id"]}, service_fixtures:{ completed: 'Pending'})
      #@servicefixtures = ServiceFixture.all()
      puts(@servicefixtures)
    end
  end

  def userservices
    puts "inside user services page"
    if session[:logged_user] != nil
      @loggedUser = session[:logged_user]
      @servicefixtures =  ServiceFixture.where(service_fixtures:{service_user_id: @loggedUser["id"], completed: 'Done'})
      puts @servicefixtures
      puts @loggedUser["id"]
    end
  end

  def createVendorAccount
      @loggedUser = session[:logged_user]
      @user =  ServiceUser.find(@loggedUser["id"])
      ServiceUser.update(@user.id , :user_status => "Pending")
      session[:logged_user] = @user
    redirect_to welcome_index_path
  end

  def acceptRequest
    puts "accpeted"
    @fixture_id = params[:id]
    @serviceFixture = ServiceFixture.find(@fixture_id)
    my_hash = {'completed' => "Done"}
    @serviceFixture.update_attributes!(my_hash)
    redirect_to servicerequestsvendor_path
  end

  def rejectRequest
    puts "rejected"
    @fixture_id = params[:id]
    @serviceFixture = ServiceFixture.find(@fixture_id)
    my_hash = {'completed' => "Rejected"}
    @serviceFixture.update_attributes!(my_hash)
    redirect_to servicerequestsvendor_path
  end
end
