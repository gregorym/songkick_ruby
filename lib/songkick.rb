require "net/http"
require "rubygems"
require 'json'

require "songkick/version.rb"
require "songkick/client.rb"

module Songkick
  class << self
   	
   	# In order to use the API you must have an API key
   	# To request one, go to this url: http://developer.songkick.com/
   	#
   	# Example:
   	# sg = Songkick.new("myaipkey")
   	# You can pass a second argument (json or xml) which is the output form.
   	# json is the default output
    #
    # Songkick.new is a shortcut for songkick::Client.new
    # You can use both, they are the same
    def new(api_key, format = :json)
      Songkick::Client.new(api_key, format)
    end

  end
end