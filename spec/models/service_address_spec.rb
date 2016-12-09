require 'rails_helper'
require 'spec_helper'
RSpec.describe ServiceAddress, type: :model do
  let(:valid_attributes){
    @param = Hash.new
    @param["address"] = "1100 oacrest street"
    @param["landmark"] = "Near A"
    @param["address_lattitute"] = 98.99999
    @param["address_longitude"] = 49.99999

    return @param

  }
  describe "Call method in Model" do
        it "Call Method in Model" do
          expect( ServiceAddress).to receive(:createAddress).with(valid_attributes)
          ServiceAddress.createAddress(valid_attributes)
        end
      end

end