class MyprofileController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index

  end

  def service_user_params
    params.require(:user_firstname)
  end


  def new

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
    print("Value of Address id is " )
    print(@add.id)

    @user = @add.service_users.create(:user_name => "Aniket")
    redirect_to welcome_index_path

  end


end
