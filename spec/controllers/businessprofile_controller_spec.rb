require 'spec_helper'
require 'rails_helper'
RSpec.describe BusinessprofileController, type: :controller do

  describe "Business Profile New Page" do
    it "driver detail new page" do
      expect(ServiceCategory).to receive(:all)
      get :new
      expect(response).to render_template("layouts/application","businessprofile/new")
    end
  end
end