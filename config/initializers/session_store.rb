# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Press-Secretary_session',
  :secret      => '85ed0b075e729e7df7d32adb76a4aec498fd850fcc0800452e84e74d86f2586ad76217909029bbbefe37efc1fb6925f64ef8b1343485b4676565d3f057247c11'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
