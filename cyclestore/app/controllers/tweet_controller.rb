require "rubygems"
require "twitter"

class TweetController < ApplicationController
   def user_page
	  @tweet=Tweet.new
	end
	  
    		def user_tweet
			@tweet=Tweet.new(params[:tweet])

			    # Certain methods require authentication. To get your Twitter OAuth credentials,
			    # register an app at http://dev.twitter.com/apps
			    Twitter.configure do |config|
			      config.consumer_key = 'EHVLouI2dFa1OU35nrmg'
			      config.consumer_secret =  'EhxFubVpNgOwAN8P2xoG3Tl3oV2KV0mrKNOfApl5Kk'
			      config.oauth_token = '148238915-G7t9uAtosSTM9nAo5fBBI09K6PKEmVAPLgSy4ebv'
			      config.oauth_token_secret = 'hUTQgCSCkcOgpdsTuI7eKZjOHKHC5NFPcmzowqg4Oqc'
			    end
	  
			    # Initialize your Twitter client
			    client = Twitter::Client.new
			  
			    # Post a status update
			    client.update(@tweet.tweet_content)
		   end
			    
			render action: "user_page", :notice => 'Tweet successfully posted'
end
