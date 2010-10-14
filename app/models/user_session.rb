class UserSession < Authlogic::Session::Base
  oauth2_client_id      FBAPI[:key]
  oauth2_client_secret  FBAPI[:secret]
  oauth2_site           "https://graph.facebook.com"
  oauth2_scope          "offline_access,email,publish_stream,sms,user_online_presence,user_likes,friends_likes"
end