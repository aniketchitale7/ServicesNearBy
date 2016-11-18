class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protected
  def after_sign_in_path_for(user)
    puts user.email
    @service_user = Service_User.find_by_user_email(user.email)
    session[:logged_user] = @service_user
    if @service_user == nil
      session[:roleid] = -1
      puts "NILL"
      session[:user_emailid] = user.email
      myprofile_myprofile_path
    else
      session[:roleid] = @service_user.service_roles_id
      puts @service_user.service_roles_id
      if @service_user.service_roles_id ==0
        session[:tab] = 0
        if @service_user.user_status == "Active"
          admin_index_path
        else
          destroy_user_session_path
        end

      else
        if @service_user.user_status == "Active"
            welcome_index_path
        else
          destroy_user_session_path
        end
      end

    end
  end
end

