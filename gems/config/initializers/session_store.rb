# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gems_session',
  :secret      => 'f58f6b7ac31274aeb2c941df4fc0dd99bd9440bebed43e108856ce40d5512401c5cc85219358501b2e61bbfef4093f5bb1e950955a97d84efcaa40c9c8ada19a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
