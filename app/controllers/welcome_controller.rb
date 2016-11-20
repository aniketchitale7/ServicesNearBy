class WelcomeController < ApplicationController
  def index


  end


  def search
    @searchterm = params[:search_box]
    @result = User.where("email LIKE ?", like_keyword = "%#{@searchterm}%")
    @result.each  do |item|
      puts(item.email)
    end
    redirect_to welcome_index_path
  end
end
