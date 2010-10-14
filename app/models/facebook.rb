class Facebook
    
  class << self; attr_accessor :graph end
  
  def self.new(user)
    @graph = Koala::Facebook::GraphAPI.new(user.oauth2_token)
    self
  end      
  
  def self.profile(user_id=nil)
     self.graph.get_object(me_or_user_id(user_id))
  end
  
  def self.likes(user_id=nil)
    self.graph.get_connections(me_or_user_id(user_id),"likes")
  end
  
  def self.friends(user_id=nil)
    self.graph.get_connections(me_or_user_id(user_id), "friends")
  end
  
  def self.me_or_user_id(user_id)
     ret = user_id || 'me'
  end      
  
  def self.compare_likes(mine,theirs)
     m = []
     t = []
     
     mine.collect{|like| m << like['id']}
     theirs.collect{|like| t << like if m.include?(like['id'])}
     
     t
  end
  
end