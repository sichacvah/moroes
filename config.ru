$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'moroes'
require 'dotenv'
Dotenv.load

Moroes::TwitterClient.configure do |config|
  config.consumer_key = ENV['TWITTER_CONSUMER_KEY']
  config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
  config.access_token = ENV['TWITTER_ACCESS_TOKEN']
  config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_TOKEN']
end

Moroes::Bot.run
