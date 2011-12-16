require "songkick/client/calendar"
require "songkick/client/event"
require "songkick/client/request"
require "songkick/client/search"
require "songkick/client/user"

module Songkick
  class Client
    
    API_URL = 'http://api.songkick.com/api/3.0/'
    
    attr_accessor :api_key, :format

    # Look at the songkick.rb file for info
    # Songkick::Client.new == Songkick.new
    def initialize(api_key, format = :json)
      @api_key = api_key
      @format = format.to_s
    end

    # Clean way to know if the format is in json
    def json?
      format == 'json'
    end
    
    # Clean way to know if the format is in xml
    def xml?
      format == 'xml'
    end

    include Songkick::Client::Calendar
    include Songkick::Client::Event
    include Songkick::Client::Search
    include Songkick::Client::User
    include Songkick::Client::Request

  end
end