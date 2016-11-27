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
                'service_roles_id' => 2}
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
end