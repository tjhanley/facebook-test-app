# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
Service.create(:name=>'Twitter', 
               :request_token_url=>'http://twitter.com/oauth/request_token', 
               :access_token_url=>'http://twitter.com/oauth/access_token', 
               :authorize_url=>'http://twitter.com/oauth/authorize')
Service.create(:name=>'Facebook', 
               :request_token_url=>'https://graph.facebook.com', 
               :access_token_url=>'https://graph.facebook.com', 
               :authorize_url=>'https://graph.facebook.com')
Service.create(:name=>'Global')
Service.create(:name=>'WordPress')

# User.create(:email=>'thomas_hanley@intuit.com',:password=>'1q2w3e4r')
# User.create(:email=>'lynette_liu@intuit.com',:password=>'1q2w3e4r')
