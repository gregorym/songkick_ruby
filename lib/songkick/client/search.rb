module Songkick
	class Client
		module Search

			def search_events(opts)
				_opts = opts.collect{|k, v| "#{k}=#{v}").join("&")}
				get "/events.#{format}?#{_opts}"
			end
				
			def search_location(opts)
				_opts = opts.collect{|k, v| "#{k}=#{v}").join("&")}
				get "/search/locations.#{format}?#{_opts}"
			end

			def search_artists(text)
				get "search/artists.#{format}?query={text}"
			end

		end
	end
end