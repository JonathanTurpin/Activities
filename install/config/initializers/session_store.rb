# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_install_session',
  :secret      => 'e1c0af15217f4d34acf1ac027ae1d7f2f9c1dec93ba3d2c7d34f60220e458d28383af0e653dd82b0525943cd78f371c5cd553cd6f565cd51d837c5469cb7b657'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
