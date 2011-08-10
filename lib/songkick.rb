require "net/http"

module Songkick
	class << self

		def new(api_key, format = :json)
			Client.new(api_key, format)
		end

	end
end