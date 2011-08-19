module Songkick
  class Client
    module Search

      # Search for upcoming events
      #
      # Options:
      # * artist_name
      # * location
      # * * sk
      # * * geo
      # * * ip
      # * * clientip
      # * min_date
      # * max_date
      #
      # Look at this page for more information about the location option: 
      # http://www.songkick.com/developer/event-search
      #
      # Example:
      # sg = Songkick.new("myapikey")
      # events = sg.search_events({:artist_name => "lady gaga"})
      # events = sg.search_events({:artist_name => "lady gaga"}, 2)
      # events = sg.search_events({:artist_name => "lady gaga", :location => "clientip=10.10.10.10"} )})
      def search_events(opts, page = 1)
        _opts = opts.collect{|k, v| "#{k}=#{v.gsub(" ", "%20")}"}.join("&")
        get "events.#{format}?#{_opts}", page
      end
      alias_method :search_event, :search_events

      # Search for locations
      #
      # Options:
      # * query
      # * location
      #
      # Look at this page for more information about the location option: 
      # http://www.songkick.com/developer/location-search
      #
      # Example:
      # sg = Songkick.new("myapikey")
      # locations = sg.search_locations({:query => "Paris"})
      def search_locations(opts, page = 1)
        _opts = opts.collect{|k, v| "#{k}=#{v.gsub(" ", "%20")}"}.join("&")
        get "search/locations.#{format}?#{_opts}", page
      end
      alias_method :search_location, :search_locations

      # Search for artists
      #
      # Example:
      # sg = Songkick.new("myapikey")
      # artists = sg.search_artists("ladygaga")
      def search_artists(text, page = 1)
        get "search/artists.#{format}?query=#{text.gsub(" ","%20")}", page
      end
      alias_method :search_artist, :search_artists

    end
  end
end