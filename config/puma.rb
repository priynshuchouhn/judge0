# config/puma.rb

# Provide defaults for missing environment variables
threads_count = Integer(ENV.fetch('RAILS_MAX_THREADS', 5))
process_count = Integer(ENV.fetch('RAILS_SERVER_PROCESSES', 2))

threads threads_count, threads_count
workers process_count

# Default port to 2358 if not provided
port ENV.fetch('PORT', 2358)

# Default environment to production
environment ENV.fetch('RAILS_ENV', 'production')

# Allow `rails restart` command to work
plugin :tmp_restart
