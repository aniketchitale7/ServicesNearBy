require 'spec_helper'
require 'rails_helper'
RSpec.describe AdminController, type: :controller do

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

  describe 'Activating user'do
    it 'should call click activate in user tab' do
      post :activate, {:id => 1}
    end

  end

  describe 'Deactivating user' do
    it 'should call click dectivate in user tab' do
      post :deactivate, {:id => 1}
    end

  end


  describe 'Activating categories'do
    it 'should call click activate in categories tab' do
      post :activatecategory, {:id => 1}
    end

  end

  describe 'Deactivating categories' do
    it 'should call click dectivate in categories tab' do
      post :deactivatecategory, {:id => 1}
    end

  end

  describe 'Activating service'do
    it 'should call click activate in service tab' do
      post :activateservice, {:id => 1}
    end

  end

  describe 'Deactivating service' do
    it 'should call click dectivate in service tab' do
      post :deactivateservice, {:id => 1}
    end

  end

end