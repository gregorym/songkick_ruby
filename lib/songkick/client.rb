require "songkick/client/calendar.rb"
require "songkick/client/event.rb"
require "songkick/client/request.rb"
require "songkick/client/search.rb"

module Songkick
  class Client
    
    API_URL = 'http://api.songkick.com/api/3.0/'
    
    attr_accessor :api_key, :format

    def initialize(api_key, format)
      @api_key = api_key
      @format = format
    end

    def format=(format)
      @format = format.to_s
    end

    def json?
      format == 'json'
    end

    def xml?
      format == 'xml'
    end

    include Songkick::Client::Calendar
    include Songkick::Client::Event
    include Songkick::Client::Search
    include Songkick::Client::Request

  end
end