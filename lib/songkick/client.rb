module Songkick
	class Client
		attr_accessor :api_key, :format

		def new(api_key, format = :json)
			@api_key = api_key
			@format = format
		end

	end
end