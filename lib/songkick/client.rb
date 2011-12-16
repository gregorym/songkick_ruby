require "songkick/client/calendar"
require "songkick/client/event"
require "songkick/client/request"
require "songkick/client/search"
require "songkick/client/user"

module Songkick
  class Client
    
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

    include Songkick::Calendar
    include Songkick::Event
    include Songkick::Search
    include Songkick::User
    include Songkick::Request

  end
end