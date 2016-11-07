class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protected
  def after_sign_in_path_for(user)
    puts user.email
    @service_user = Service_User.find_by_user_email(user.email)
    if @service_user == nil
      puts "NILL"
      welcome_index_path
    else
      puts @service_user.service_roles_id
      welcome_admin_path
    end
  end
end

