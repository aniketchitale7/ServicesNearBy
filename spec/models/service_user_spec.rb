require 'rails_helper'

RSpec.describe ServiceUser, type: :model do
  let(:valid_attributes){
    @param = Hash.new
    @param["user_firstname"] = "1100 oacrest street"
    @param["user_lastname"] = "Near A"
    @param["user_phone"] = "213123123"
    @param["user_email"] = "aniket@gmail.com"
    @param["user_status"] = "Active"
    @param["service_role_id"] = 1
    @param["service_address_id"] = 1
    return @param

  }

  describe "Call Create user method in Model" do
    it "Call Create user method in Model" do
      expect( ServiceUser).to receive(:create_service_user).with(valid_attributes)
      ServiceUser.create_service_user(valid_attributes)
    end
  end
end
