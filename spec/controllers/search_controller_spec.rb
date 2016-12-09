require 'spec_helper'
require 'rails_helper'
RSpec.describe SearchController, type: :controller do

  describe 'Calling  index'do
    it 'should call index page' do
      post :index, {:id => 1}
    end

    it 'should create' do
      get :create
      expect(response).to redirect_to("/search/feed")
    end

    user = User.find(1)
    before { allow(controller).to receive(:current_user) { user } }

    it 'for feedback path' do
      session[:reviewserviceid] = 1
      post :feedback, {:id => 1}
      expect(response).to redirect_to("/welcome/index")
    end
  end


end
