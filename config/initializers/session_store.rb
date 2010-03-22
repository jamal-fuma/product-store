# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_store5_session',
  :secret      => 'a3ef98a8e44da2a8d8d49e526484244038e8c025d86486413971fb2692f30026999f0407332ac6512ad675f9ab397ef3268edc9cd1d93f45dbaea340a9a4909e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
