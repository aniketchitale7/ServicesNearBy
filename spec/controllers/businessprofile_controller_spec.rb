require 'spec_helper'
require 'rails_helper'

RSpec.describe BusinessprofileController, type: :controller do

  let(:valid_attributes){
    # @hashValue= Hash.new
    @param = Hash.new
    # @hashValue["service_name"] = "billion"
    # @hashValue["phoneNo"] = "31922229292"
    # @hashValue["service_time"] = "My Time"
    # @hashValue["service_price"] = 25
    # @hashValue["service_description"] = "My Description"
    # @hashValue["service_category_id"] = 1
    # @hashValue["service_user_id"] = 1
    # @hashValue["service_address_id"] = 1
    # @hashValue["service_status"] = "Pending"
    @param["id"] = 1
    @param["address"] = "1100 oacrest street"
    @param["landmark"] = "Near A"
    @param["address_lattitute"] = 98.99999
    @param["address_longitude"] = 49.99999
    @param["service_name"] = "billion"
    @param["phoneNo"] = "31922229292"
    @param["service_time"] = "My Time"
    @param["service_price"] = 25
    @param["service_description"] = "My Description"
    @param["service_category_id"] = 1
    @param["service_user_id"] = 1
    @param["service_address_id"] = 1
    @param["service_status"] = "Pending"

  return @param

  }


  describe "Business Profile New Page" do
    it "Render New Page with Categories" do
      expect(ServiceCategory).to receive(:all)
      get :new
      expect(response).to render_template("layouts/application","businessprofile/new")
    end
  end

  describe "Business Profile Edit Page" do
    it "Render Edit Page for id" do
      expect(ServiceService).to receive(:find_by_id)
      post :edit , :id => 1
      expect(response).to render_template("layouts/application","businessprofile/edit")
    end
  end

  describe "Business Profile Destroy Page" do
    it "deletes the user" do
      expect{
        delete :destroy, :id => 1
      }.to change(ServiceService, :count).by(-1)
    end
  end



  describe "Business Profile Create Page" do
    it "Creates the Business Profile Page" do
      # post :create, valid_attributes
      # expect{
      #   post :create, valid_attributes
      # }.to change(ServiceService, :count).by(1)

    end
  end

  describe "Business Profile Update Page" do
    it "Creates the Business Update Page" do
      put :update, valid_attributes
    end

    # let(:attr) do
    #   { :service_name => 'new title'}
    # end
    #
    # before(:each) do
    #   @article = Factory(:service_services)
    #   put :update, :id => @service_services.id, :article => attr
    #   @article.reload
    # end
    #
    # it { expect(response).to redirect_to(@article) }
    # it { expect(@article.service_name).to eql attr[:service_name] }
  end

  describe "Business Profile Index Page" do
    it "Creates the Business Index Page" do
      get :index
    end

  end

  describe "Business Profile Index Page" do

    user = User.find(1)
    before { allow(controller).to receive(:current_user) { user } }

    it "Creating a service" do

      post :create, valid_attributes
    end

  end


end