class BusinessprofileController < ApplicationController

  def index
    @category = ServiceCategory.all

    @service = ServiceService.all
    @finalResult = []
    @service.each  do |item|
      @vendorAddress = item.service_address

      @hashValue= Hash.new
      @hashValue["object"] = item
      @hashValue["service_name"] = item.service_name
      @hashValue["Service_Category"] = item.service_category
      @hashValue["Service_User"] = item.service_user
      @hashValue["Service Address"] = item.service_address
      @vendorAddress = item.service_address
      @hashValue["phoneNo"] = item.phoneNo
      @hashValue["service_time"] = item.service_time
      @hashValue["service_price"] = item.service_price
      @hashValue["service_description"] = item.service_description
      @hashValue["combinedAddress"] = @vendorAddress.address_line1 + "," +  @vendorAddress.address_line2 + "," +
          @vendorAddress.address_city + "," + @vendorAddress.address_state + "," + @vendorAddress.address_country

      @finalResult.append(@hashValue)
    end

  end



  def new
    @category = ServiceCategory.all
  end


  def update
    @service = ServiceService.find_by_id(params["id"])
    @hashValue= Hash.new
    @addressHash = Hash.new
    @hashValue["service_name"] = params["service_name"]
    @hashValue["phoneNo"] = params["phoneNo"]
    @hashValue["service_time"] = params["service_time"]
    @hashValue["service_price"] = params["service_price"]
    @hashValue["service_description"] = params["service_description"]

    @addressHash["address_line1"] = params["address_line1"]
    @addressHash["address_line2"] = params["address_line2"]
    @addressHash["address_zip"] = params["address_zip"]
    @addressHash["address_city"] = params["address_city"]
    @addressHash["address_country"] = params["address_country"]

    @service.update_attributes!(@hashValue)
    @service.service_address.update_attributes!(@addressHash)
    redirect_to businessprofile_index_path



  end

  def show


  end

  def edit

   @serviceId = params[:id]
    @item= ServiceService.find_by_id(@serviceId)
  end


  def create

    @hashValue= Hash.new
    @addressHash = Hash.new
    @addressHash["address_line1"] = params["address_line1"]
    @addressHash["address_line2"] = params["address_line2"]
    @addressHash["address_zip"] = params["address_zip"]
    @addressHash["address_city"] = params["address_city"]
    @addressHash["address_country"] = params["address_country"]
    @addressHash["address_state"] = params["address_state"]
    @add = ServiceAddress.createAddress(@addressHash)

    @hashValue["service_name"] = params["service_name"]
    @hashValue["phoneNo"] = params["phoneNo"]
    @hashValue["service_time"] = params["service_time"]
    @hashValue["service_price"] = params["service_price"]
    @hashValue["service_description"] = params["service_description"]
    @hashValue["service_category_id"] = params["category"]
    @currentUser =  ServiceUser.find_by_user_email(current_user.email)
    @hashValue["service_user_id"] = @currentUser.id
    @hashValue["service_address_id"] = @add.id
    @hashValue["service_status"] = "Pending"




    @user = ServiceService.create(@hashValue)
    redirect_to businessprofile_index_path


  end

  def destroy
    print("Inside Destroy")
  end
end