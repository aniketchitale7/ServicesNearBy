require 'spec_helper'
require 'rails_helper'
RSpec.describe WelcomeController, type: :controller do

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
  #   endrake db:seed RAILS_ENV=test
  # end

  describe 'POST #search' do
    it 'should sort location' do
    # post :search, {@filterid => 'Price', @searchterm => 'Iowa', @category => nil, @filter =>nil, @latitude => nil, @longitude => nil}
      post :search, {:category => 'location', :category_box => 'Iowa'}

      post :search, {:category => 'distance', :category_box => 'Iowa'}

      post :search, {:filterid => 'Price'}

      post :search, {:filterid => 'Price', :flagPrice => true}

      post :search, {:filterid => 'AZ', :flagAZ => false}

      post :search, {:filterid => 'AZ'}


      post :requestservice, {:id => 1, :logged_user => 1}
    end
  end

end