# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_9=no9_session',
  :secret      => '6f1590f5d09dd1da43168fa17bf6ccbf9bc879e225c0b024be2217619fa92e31cb5009a8f8770fd6fe3a01a050ef3d6ec639bef72033ba9f4775114601cb7fc9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
