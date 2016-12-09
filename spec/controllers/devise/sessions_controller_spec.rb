require 'spec_helper'
require 'rails_helper'
RSpec.describe Devise::SessionsController, type: :controller do

  describe "user login page" do
    it "allows users to login with an email address and password" do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      get :new
      expect(response).to render_template("devise/sessions/new")
    end
  end

  describe "user login page" do
    it "allows users to login with an email address and password and go to home page" do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      get :new
      expect(response).to render_template("devise/sessions/new")
      post :create, {:user => {:email => "servicesnearby1@gmail.com", :password => "aaaaaa"}}
      expect(response).to render_template("/")
    end
  end

  describe "When the user clicks on logout" do
    it "allow them to go back to home page" do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      post :destroy, {}
      expect(response).to redirect_to("/")
    end
  end

end
