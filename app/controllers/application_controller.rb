class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protected
  def after_sign_in_path_for(user)
    puts user.email
    @service_user = Service_User.find_by_user_email(user.email)
    if @service_user == nil
      puts "NILL"
      session[:user_emailid] = user.email
      myprofile_myprofile_path
    else
      puts @service_user.service_roles_id
      if @service_user.service_roles_id ==0
        welcome_admin_path
      else
        welcome_index_path
      end

    end
  end
end

