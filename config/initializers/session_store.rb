# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rschdule_session',
  :secret      => '988228a4004771590f60e67f42890d77aa0690dd0eaf1bbd303fdfa0f3d328430c04688196f009550aafffaa69eb66143b0f05e172e8abd182651203c2e18a99'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
