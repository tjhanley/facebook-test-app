class FacebookController < ApplicationController           
  before_filter :require_user, :only => [:show]   
  before_filter :get_foursquare_consumer, :only =>[ :show ]

  def show
    mine = @facebook.likes
    theirs = @facebook.likes(params[:id])
    @likes = @facebook.compare_likes(mine,theirs)
    @friend = @facebook.profile(params[:id]) 
    render :layout => false
  end                              
  
  private
  
  def get_foursquare_consumer
    @facebook = Facebook.new(@current_user)
  end                                      
  
end
