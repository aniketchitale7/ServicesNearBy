class WelcomeController < ApplicationController
  def index


  end


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
      validAddress = @vendorAddress["address"]
      if(@vendorAddress["landmark"] != nil)
        validAddress = validAddress + @vendorAddress["landmark"]
      end
      @hashValue["address"] = validAddress
      @hashValue["Reviews"] = @serviceFeedback
      @finalResult.append(@hashValue)
    end
    print(@finalResult.to_s)
    # redirect_to search_index_path
  end

  def requestservice
    @id = params[:id] # retrieve movie ID from URI route
    @service_user = session[:logged_user]

    puts @id
    if @service_user == nil
      flash.now[:alert] = 'Please Sign in'
      puts "habjh"
    else
      puts "here"
      @hashValue= Hash.new
      @hashValue["service_user_id"] = @service_user["id"]
      @hashValue["service_service_id"] = @id
      @hashValue["completed"] = "Pending"
      @servicefixture =  ServiceFixture.create!(@hashValue)
    end
  end
end
