class User < ActiveRecord::Base
  acts_as_authentic
  has_many :statuses 
  validates_presence_of :email, :message => "can't be blank" 

  list_columns :email, :created_at, :updated_at
  admin_fieldset do |f|
    f.text_field :email
    f.secure_password :password
    f.static_text :created_at
    f.static_text :updated_at
  end
  
  def self.find_by_username_and_password(username, password)
    session = UserSession.new(:email => username, :password => password,:remember_me => true); session.save
  end 
  def to_label
     self.email
  end
  
  def after_oauth2_authentication
    json = oauth2_access.get('/me')

    if user_data = JSON.parse(json)
      self.email = user_data['email']
      self.facebook_uid = user_data['id']
    end
    RAILS_DEFAULT_LOGGER.debug(user_data.inspect)
  end

end
