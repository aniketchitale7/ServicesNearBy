require 'spec_helper'
require 'rails_helper'
RSpec.describe MyprofileController, type: :controller do
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
    @param["user_firstname"] = "user_firstname"
    @param["user_lastname"] = "1100 oacrest street"
    @param["user_phone"] = "1234567890"
    @param["user_email"] = "user_email"
    @param["service_role_id"] = 3
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

  # describe "Form to enter details" do
  #   it "check which user has logged in" do
  #   #  user = User.new(
  #   #  first_name: 'Aaron',
  #   #  last_name: 'Sumner',
  #   #  email: 'tester@example.com',
  #   #  password: '12341234')
  #   #
  #   #   user.roles << Role.find_by_name('driver')
  #   #   expect(user.roles[0].name).to eq 'driver'
  #     # get :new
  #     # expect(response).to render_template("driverdetails/new")
  #   end
  # end


  #describe 'GET #update' do
  #  it 'creates a hash user'
  #  it 'creates a hash of user address'
  #  it 'updates the user information in service_users table' do
  #  end
  #  it 'updates the address information in service_addresses table'
  #  it 'renders the :welcome_index view' do
  #    post :update
  #    expect(Myprofile).to redirect_to('/welcome/search')
  #  end#

  #end

  describe 'add address to the database' do
    it 'should call add address' do
      user = Hash.new
      user["user_firstname"] = "user_firstname"
      user["user_lastname"] = "user_firstname"
      user["user_phone"] = "user_firstname"
      user["user_email"] = "user_firstname"
      user["service_role_id"] = 3
      session[:loggeduser] = user
      post :create, {:address => "address", :landmark => "landmark", :address_lattitute => "address_lattitute", :address_longitude => "address_longitude"}
      expect(response).to render_template("welcome/index")
    end
  end

  describe 'reject request' do
    it 'should reject the request' do
    post :rejectRequest, {:id => 1}
    end
  end
  describe "My Profile Update Page" do
    it "Creates the My Profile Update Page" do
      user = Hash.new
      user["user_firstname"] = "user_firstname"
      user["user_lastname"] = "user_firstname"
      user["user_phone"] = 1234567890
      user["current_user.email"] = "shrivastava.ankur1190@gmail.com"
      put :update, {:user => user, :address => "address", :landmark => "landmark", :address_lattitute => "address_lattitute", :address_longitude => "address_longitude", :user_firstname => "user_firstname", :user_lastname => "user_firstname", :user_phone => "user_phone"}
      @user = ServiceUser.find_by_user_email("shrivastava.ankur1190@gmail.com")
      expect(response).to redirect_to("/welcome/index")
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

  describe 'accept request' do
    it 'accept request' do
     post :acceptRequest, {:id => 1, :my_hash => {'completed' => "Rejected"} }
    end
  end

  describe 'edit' do
    it 'edit' do
      post :edit, {:id => 1}
    end
  end

end