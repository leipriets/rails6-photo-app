# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :address => ENV['SMTP_ADDRESS'],
    :port => '587',
    :authentication => :plain,
    :user_name => ENV['SMTP_USER_NAME'],
    :password => ENV['SMTP_PASSWORD'],
    :domain => 'heroku.com',
    :enable_starttls_auto => true
  }