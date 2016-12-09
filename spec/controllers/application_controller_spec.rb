require 'spec_helper'
require 'rails_helper'
RSpec.describe ApplicationController, type: :controller do

  def after_sign_in_path_for(resource)
    super resource
  end


  describe "After sigin-in" do
    it "redirects to the admin path" do
      session[:logged_user] = nil
      session[:roleid] = nil
      session[:user_emailid] = nil
      session[:loggedUserAddress] = nil
      @user = User.find_by_email("admin.active@gmail.com")
      controller.after_sign_in_path_for(@user)
    end

    it "redirects to the user path" do
      session[:logged_user] = nil
      session[:roleid] = nil
      session[:user_emailid] = nil
      session[:loggedUserAddress] = nil
      @user = User.find_by_email("user.active@gmail.com")
      controller.after_sign_in_path_for(@user)
    end


    it "redirects to the vendor path" do
      session[:logged_user] = nil
      session[:roleid] = nil
      session[:user_emailid] = nil
      session[:loggedUserAddress] = nil
      @user = User.find_by_email("vendor.active@gmail.com")
      controller.after_sign_in_path_for(@user)
    end

    it "inactive user login" do
      session[:logged_user] = nil
      session[:roleid] = nil
      session[:user_emailid] = nil
      session[:loggedUserAddress] = nil
      @user = User.find_by_email("vendor.inactive@gmail.com")
      controller.after_sign_in_path_for(@user)
    end
    it "inactive admin login" do
      session[:logged_user] = nil
      session[:roleid] = nil
      session[:user_emailid] = nil
      session[:loggedUserAddress] = nil
      @user = User.find_by_email("admin.inactive@gmail.com")
      controller.after_sign_in_path_for(@user)
    end


    it "first time user login" do
      session[:logged_user] = nil
      session[:roleid] = nil
      session[:user_emailid] = nil
      session[:loggedUserAddress] = nil
      @user = User.find_by_email("first.time@gmail.com")
      controller.after_sign_in_path_for(@user)
    end

  end

end
