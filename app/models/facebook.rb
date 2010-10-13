class Facebook

  def self.new(user)
    graph = Koala::Facebook::GraphAPI.new(user.oauth2_token)
  end
  
end