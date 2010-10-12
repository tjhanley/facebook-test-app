ActionController::Routing::Routes.draw do |map|  map.oauth_authorize '/oauth/:service/start', :controller => 'oauth', :action => 'start'
  map.oauth_callback '/oauth/:service/callback', :controller => 'oauth', :action => 'callback'

  map.resource :user_session

  map.resource :account, :controller => "users"
  map.resources :users
  
  map.root :posts

end
