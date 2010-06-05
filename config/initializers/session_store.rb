# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Activities_session',
  :secret      => '4f601075e0feac934fe70055d3d6a20e3bc47ea0418b1be3b65f99d50615e43c382f1f111b4c1da2c08cdee86d9e97f52afea380264dcc25789cb858c35a2faf'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
