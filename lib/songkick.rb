require "net/http"
require "rubygems"
require 'json'

require "songkick/version.rb"
require "songkick/client.rb"

module Songkick
  class << self
    
    def new(api_key, format)
      Songkick::Client.new(api_key, format)
    end

  end
end