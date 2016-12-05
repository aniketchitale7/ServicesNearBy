class WelcomeController < ApplicationController
  def index

  end

<<<<<<< HEAD
=======

  def search
    @searchterm = params[:search_box]
    @finalResult = []

    # @result = ServiceService.where("service_description LIKE ?", like_keyword = "%#{@searchterm}%")
    @result = ServiceService.where("service_description LIKE ? OR keywords LIKE ?", "%#{@searchterm}%", "%#{@searchterm}%")
    @result.each  do |item|
      @service_user_name = item.service_user
      @vendorAddress = item.service_address
      @serviceFeedback = item.service_reviews
      @hashValue= Hash.new
      @hashValue["id"] = item.id
      @hashValue["Vendor_Name"] = @service_user_name.user_firstname + @service_user_name.user_lastname
      @hashValue["Vendor_PhoneNo"] = item.phoneNo
      @hashValue["Service_Name"] = item.service_name
      @hashValue["time"] = item.service_time
      @hashValue["address"] = @vendorAddress.address_line1 + "," +  @vendorAddress.address_line2 + "," +
          @vendorAddress.address_city + "," + @vendorAddress.address_state + "," + @vendorAddress.address_country
      @hashValue["Reviews"] = @serviceFeedback
      @finalResult.append(@hashValue)
    end
    print(@finalResult.to_s)
    # redirect_to search_index_path
  end
>>>>>>> master
end
