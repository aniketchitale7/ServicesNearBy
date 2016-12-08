require 'spec_helper'
require 'rails_helper'
RSpec.describe ApplicationController, type: :controller do

  def after_sign_in_path_for(resource)
    super resource
  end


  describe "After sigin-in" do
    it "redirects to the root path" do
      session[:logged_user] = nil
      session[:roleid] = nil
      session[:user_emailid] = nil
      session[:loggedUserAddress] = nil
      @user = User.find_by_email("kalyansaim@gmail.com")
      controller.after_sign_in_path_for(@user)
    end
  end

end
