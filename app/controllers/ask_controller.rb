class AskController < ApplicationController
  def index
    @ask = Ask.new
  end
  
  def create
    @ask = Ask.new
    @ask.body = params[:ask][:body]
    @ask.process
    current_user.oauth2_access.post("/me/feed?message=Asked Galactus: #{@ask.body}?&link=http://1.bp.blogspot.com/_4OYGjUrdllo/SUM8qT-yRJI/AAAAAAAANao/iQwAZoMc6_U/s1600-h/3102269717_1e707314af.jpg")
  end 
end
