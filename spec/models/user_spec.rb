require 'rails_helper'
require 'spec_helper'
RSpec.describe User, type: :model do
      it "has a valid user entry" do
        expect(FactoryGirl.create(:user)).to be_valid
      end

      it "is invalid without a email" do
       user = User.new(email: nil)
       user.valid?
       expect(user.errors[:email]).to include("can't be blank")
     end

     it "is invalid without a password" do
      user = User.new(password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

      it "is invalid with a duplicate email address" do
      User.create(
       email: 'tester@example.com',
       password: '12341234'
      )
      user = User.new(
        email: 'tester@example.com',
        password: '12341234'
      )
      user.valid?
      expect(user.errors[:email]).to include("has already been taken")
    end


  end
