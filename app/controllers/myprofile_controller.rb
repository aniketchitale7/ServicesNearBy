
class MyprofileController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def service_user_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end
  def new
    puts "testing"
  end


  def create
    puts "testing"
  end


end