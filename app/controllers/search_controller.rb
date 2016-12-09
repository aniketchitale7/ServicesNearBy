class SearchController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    id = params[:id]
    puts "jhdhdhd"
    print (id)
    puts "inside feedback"
    redirect_to search_feed_path

  end
  def show

  end

  def create
    session[:reviewserviceid] = params[:id]
    puts session[:reviewserviceid]
    redirect_to search_feed_path
  end

  def feedback
    puts session[:reviewserviceid]
    review = Hash.new
    @user = ServiceUser.find_by_user_email(current_user.email)
    review["service_user_id"] = @user.id
    review["service_service_id"] = session[:reviewserviceid]
    review["review_info"] = params["user_comments"]
    review["review_rating"] = params["rating"]
    puts review
    @servicereview = ServiceReview.create!(review)
    redirect_to welcome_index_path
  end

end
