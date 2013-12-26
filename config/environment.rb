# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Kicker::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['somecallmejosh'],
  :password       => ENV['2Buttl!pS'],
  :domain         => 'http://ikick.it',
  :enable_starttls_auto => true
}