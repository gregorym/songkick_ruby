module Songkick
  class Client
    module Search

      def search_events(opts, page = 1)
        _opts = opts.collect{|k, v| "#{k}=#{v.gsub(" ", "%20")}"}.join("&")
        get "events.#{format}?#{_opts}", page
      end
      alias_method :search_event, :search_events


      def search_locations(opts, page = 1)
        _opts = opts.collect{|k, v| "#{k}=#{v.gsub(" ", "%20")}"}.join("&")
        get "search/locations.#{format}?#{_opts}", page
      end
      alias_method :search_location, :search_locations

      def search_artists(text, page = 1)
        get "search/artists.#{format}?query=#{text.gsub(" ","%20")}", page
      end
      alias_method :search_artist, :search_artists

    end
  end
end