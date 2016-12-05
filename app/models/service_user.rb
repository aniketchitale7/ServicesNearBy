class Service_User < ActiveRecord::Base
  def self.create_service_user(user_params)
    random_token = SecureRandom.urlsafe_base64(nil, false)
    user_params[:user_session_token] = random_token
    Service_User.create!(user_params)
    puts "Ssfs"
  end
end
