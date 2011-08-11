require "net/http"
require 'json'

module Songkick
	class << self

		API_URL = 'http://api.songkick.com/api/3.0/'

		def new(api_key, format = :json)
			Client.new(api_key, format)
		end

	end
end