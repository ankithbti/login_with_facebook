OmniAuth.config.logger = Rails.logger
#OmniAuth.config.on_failure = UsersController.action(:oauth_failure)

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :developer unless Rails.env.production?
  #provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  #provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
  provider :facebook, '230686753727664', '98159f9e6e7677ccb541bb53ba145882'
  #provider :twitter, 'pM5bHgbHJx3mA4mH3utQ', 'MyhecFVZ6lfQus7PbTlJTzJIxRgRWYNfUGm6oma98'
  
end