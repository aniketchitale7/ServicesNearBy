class Service_User < ActiveRecord::Base
  def self.create_service_user(user_params)
<<<<<<< HEAD
    random_token = SecureRandom.urlsafe_base64(nil, false)
    user_params[:user_session_token] = random_token
    Service_User.create!(user_params)
    puts "Ssfs"
  end
=======
    # random_token = SecureRandom.urlsafe_base64(nil, false)
    # user_params[:user_session_token] = random_token
    # ServiceUser.create!(user_params)
  end

  def self.update_service_user(user_params)
    # user = Service_User.find_by_user_email(user_params["user_email"])
    # user.update_attributes(user_params)
  end

>>>>>>> master
end
