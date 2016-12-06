class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protected
  def after_sign_in_path_for(user)
    puts user.email
    @service_user = ServiceUser.find_by_user_email(user.email)
    session[:logged_user] = @service_user
    if @service_user == nil
      session[:roleid] = -1
      session[:user_emailid] = user.email
      myprofile_index_path
    else
      session[:loggedUserAddress] =  @service_user.service_address
      session[:roleid] = @service_user.service_role_id
      if @service_user.service_role_id ==1
          session[:tab] = 0
        if @service_user.user_status == "Active"
          admin_index_path
        else
          destroy_user_session_path
        end

      else
        if @service_user.user_status == "Active" || @service_user.user_status == "Pending"
            welcome_index_path
        else
          destroy_user_session_path
        end
      end

    end
  end
end

