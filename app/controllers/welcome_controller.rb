class WelcomeController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
      @categories = ServiceCategory.all.where(service_categories: {service_status: 'Active'})
  end

  $flagPrice = false
  $flagAZ = false
  $searchKeyword = ""

  def search
    @filterid = params["filterid"]
    @filter = params[:category_box]
    @category = params[:category]
    @latitude = params[:latitude].to_f
    @longitude = params[:longitude].to_f
    @searchterm = params[:search_box]
    @finalResult = []
    $searchKeyword = @searchterm
    $flagPrice = !$flagPrice
    $flagAZ = !$flagAZ

    @result = ServiceService.where("service_description LIKE ? OR keywords LIKE ?", "%#{@searchterm}%", "%#{@searchterm}%")
    if(@filterid == 'Price' and $flagPrice == true)
      @result = @result.order("service_price DESC")
    elsif(@filterid == 'Price' and $flagPrice == false)
      @result = @result.order("service_price ASC")
    end
    if(@filterid == 'AZ' and $flagAZ == true)
      @result = @result.order("service_name DESC")
    elsif(@filterid == 'AZ' and $flagAZ == false)
      @result = @result.order("service_name ASC")
    else
      filterLocation

    end
    createResult
    # redirect_to search_index_path
  end

  def createResult
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
      puts('~~~asd~~~~')
      puts(@category)
      puts('~~~asd~~~~')
      if(@category == 'distance')
        @lat = @vendorAddress['address_lattitute'].to_f
        @lon = @vendorAddress['address_longitude'].to_f
        @disInMeters = distance_between(@lat, @lon, @latitude, @longitude)

        if(@disInMeters[:m].to_f < 5000)
          @finalResult.append(@hashValue)
        end

      else
        @finalResult.append(@hashValue)
      end
      print(@finalResult.to_s)
    end

  end

  def filterLocation
    if(@category == 'location')
      @result = @result.joins(:service_address).where("address LIKE ?", "%#{@filter}%")
    end
  end

  def requestservice
    @id = params[:id] # retrieve movie ID from URI route
    @service_user = session[:logged_user]

    puts @id
    if @service_user == nil
      flash.now[:alert] = 'Please Sign in'
    else
      @hashValue= Hash.new
      @hashValue["service_user_id"] = @service_user["id"]
      @hashValue["service_service_id"] = @id
      @hashValue["completed"] = "Pending"
      @servicefixture =  ServiceFixture.create!(@hashValue)
    end
  end


  MAX_DISTANCE_AWAY_IN_KM = 100.0
  RAD_PER_DEG             = 0.017453293

  Rmiles  = 3956           # radius of the great circle in miles
  Rkm     = 6371           # radius in kilometers, some algorithms use 6367
  Rfeet   = Rmiles * 5282  # radius in feet
  Rmeters = Rkm * 1000     # radius in meters

  def distance_between( lat1, lon1, lat2, lon2 )
    dlon = lon2 - lon1
    dlat = lat2 - lat1

    dlon_rad = dlon * RAD_PER_DEG
    dlat_rad = dlat * RAD_PER_DEG

    lat1_rad = lat1 * RAD_PER_DEG
    lon1_rad = lon1 * RAD_PER_DEG

    lat2_rad = lat2 * RAD_PER_DEG
    lon2_rad = lon2 * RAD_PER_DEG

    a = (Math.sin(dlat_rad/2))**2 + Math.cos(lat1_rad) *
        Math.cos(lat2_rad) * (Math.sin(dlon_rad/2))**2
    c = 2 * Math.atan2( Math.sqrt(a), Math.sqrt(1-a))

    dMi     = nil #Rmiles * c      # delta between the two points in miles
    dKm     = nil #Rkm * c         # delta in kilometers
    dFeet   = nil #Rfeet * c       # delta in feet
    dMeters = Rmeters * c     # delta in meters

    { :mi => dMi, :km => dKm, :ft => dFeet, :m => dMeters }
  end

end
