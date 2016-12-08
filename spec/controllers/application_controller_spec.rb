require 'spec_helper'
require 'rails_helper'
RSpec.describe ApplicationController, type: :controller do

  describe "Login sequence" do
    it "check which user has logged in" do
     user = User.new(
     email: 'kalyansim@gmail.com')

      post :after_sign_in_path_for(user)
      expect(response).to render_template("driverdetails/new")
    end
  end





end
