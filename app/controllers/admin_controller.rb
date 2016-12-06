class AdminController < ApplicationController


  def index

    puts "kalyan"
    @users = ServiceUser.all
    puts @users.length
    @category = ServiceCategory.all
    @service = ServiceService.all


  end


  def show
    id = params[:id] # retrieve movie ID from URI route
    @user = ServiceUser.find(id)
    my_hash = {'user_status' => "Active",
                'service_role_id' => 2}
    @user.update_attributes!(my_hash)
    puts "Done"
    redirect_to admin_index_path
  end


  def reject
    id = params[:id] # retrieve movie ID from URI route
    @user = ServiceUser.find(id)
    my_hash = {'user_status' => "Active"}
    @user.update_attributes!(my_hash)
    puts "Done"
    redirect_to admin_index_path
  end

  def activate
    id = params[:id] # retrieve movie ID from URI route
    @user = ServiceUser.find(id)
    my_hash = {'user_status' => "Active"}
    @user.update_attributes!(my_hash)
    puts "Done"
    redirect_to admin_index_path
  end

  def deactivate
    id = params[:id] # retrieve movie ID from URI route
    @user = ServiceUser.find(id)
    my_hash = {'user_status' => "Inactive"}
    @user.update_attributes!(my_hash)
    puts "Done"
    redirect_to admin_index_path
  end


  def deactivatecategory
    id = params[:id] # retrieve movie ID from URI route
    puts id
    @category = ServiceCategory.find(id)
    my_hash = {'service_status' => "Inactive"}
    @category.update_attributes!(my_hash)
    puts "Done"
    redirect_to admin_index_path
  end

  def activatecategory
    id = params[:id] # retrieve movie ID from URI route
    @category = ServiceCategory.find(id)
    my_hash = {'service_status' => "Active"}
    @category.update_attributes!(my_hash)
    puts "Done"
    redirect_to admin_index_path
  end

  def deactivateservice
    id = params[:id] # retrieve movie ID from URI route
    @service = ServiceService.find(id)
    my_hash = {'service_status' => "Inactive"}
    @service.update_attributes!(my_hash)
    puts "Done"
    redirect_to admin_index_path
  end

  def activateservice
    id = params[:id] # retrieve movie ID from URI route
    @service = ServiceService.find(id)
    my_hash = {'service_status' => "Active"}
    @service.update_attributes!(my_hash)
    puts "Done"
    redirect_to admin_index_path
  end



  def rejectservice
    id = params[:id] # retrieve movie ID from URI route
    @service = ServiceService.find(id)
    my_hash = {'service_status' => "Reject"}
    @service.update_attributes!(my_hash)
    puts "Done"
    redirect_to admin_index_path
  end

  def addcategory
    name = params[:service_name]["service_name"]
    description = params[:service_information]["service_information"]
    @hashValue= Hash.new
    @hashValue["service_name"] = name
    @hashValue["service_information"] = description
    @hashValue["service_status"] = 'Active'
    @category = ServiceCategory.create!(@hashValue)
    redirect_to admin_index_path
  end

end