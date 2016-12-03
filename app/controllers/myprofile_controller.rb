class MyprofileController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index

  end

  def service_user_params
    params.require(:user_firstname)
  end


  def new

  end

  def show


  end

  def edit

  end


  def create

    address = Hash.new

    address["address_line1"] = params["addressline1"]
    address["address_line2"] = params["addressline2"]
    address["address_zip"] = params["zip"]
    address["address_state"] = "IA"
    address["address_city"] = params["city"]
    address["address_country"] = params["country"]
    address["address_lattitute"] = -91.6109434
    address["address_longitude"] = 41.6297493

    @add = ServiceAddress.createAddress(address)
    print(@add.id)
    @roleid = ServiceRole.find_by_role_name("Admin")

    @user = @add.service_users.create(:user_firstname => params["user_firstname"],
                                      :user_lastname => params["user_lastname"],
                                      :user_phone => params["user_phone"],
                                      :user_email => current_user.email, :user_status => 'Active' ,
                                      :service_role_id => @roleid.id
    )

    redirect_to welcome_index_path

  end

  def requestvendoraccount
    if session[:logged_user] != nil and session[:roleid] == 2
        @message = "Congratulation You already Have Vendor Account"
    else
      @message = "You can Create Vendor Account by submitting the Request"
    end
  end

  def createVendorAccount

    redirect_to welcome_index_path
  end


end
