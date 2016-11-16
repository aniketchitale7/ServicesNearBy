class AdminController < ApplicationController

  def index

    puts "kalyan"
    @users = Service_User.all
    puts @users.length

  end

end