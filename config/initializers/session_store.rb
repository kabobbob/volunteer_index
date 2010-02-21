# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_volunteer_index_session',
  :secret      => '03184a2783b645d0e99c19956c901035afc3863630f070b2962f59dff30c9ab4a5ba5cdc72482b2165549e8cf5dd3f4ebc352951d261fbdb01c57d3eb357e0ea'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
