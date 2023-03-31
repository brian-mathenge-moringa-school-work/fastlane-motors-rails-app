port ENV['RAILS_ENV'] ||= 'production'

# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!
