class Facebook
    
  class << self; attr_accessor :graph end
  
  def self.new(user)
    @graph = Koala::Facebook::GraphAPI.new(user.oauth2_token)
    self
  end      
  
  def self.profile
     self.graph.get_object("me")
  end
  
  def self.likes(user_id)
    self.graph.get_connections("me","likes")
  end
  
  def self.friends
    self.graph.get_connections("me", "friends")
  end
  
end