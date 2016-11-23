class Service_User < ActiveRecord::Base
  has_many :service_services
  belongs_to :service_addresses
  belongs_to :service_roles

  def self.create_service_user(user_params)
    random_token = SecureRandom.urlsafe_base64(nil, false)
    user_params[:user_session_token] = random_token
    Service_User.create!(user_params)
    puts "Ssfs"
  end

  def self.update_service_user(user_params)
    puts "00000"
    puts user_params
    user = Service_User.find_by_user_email(user_params["user_email"])
    puts user_params["user_email"]
    puts 'inside update'
    puts user_params
    user.update_attributes(user_params)
    puts "update"
  end

end
