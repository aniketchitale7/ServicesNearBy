class Service_User < ActiveRecord::Base
  def self.create_service_user(user_params)
    begin
      random_token = SecureRandom.urlsafe_base64(nil, false)
      first_truck = Service_User.select(:user_session_token).find_by_session_token(random_token) # => <Truck id: nil, truck_no: "123"> OR nil if no record matches criteria
      if first_truck == nil
        user_params[:user_session_token] = random_token
        break
      end
    end while true
    Service_User.create!(user_params)
  end
end
