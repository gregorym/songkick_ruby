module Songkick
  class Client
    module User

      # Find past events that a user attended
      # For upcoming events use user_calendar method
      # Important:
      # Only public profiles are considered
      #
      # Example:
      # sg = Songkick.new("myapikey")
      # gigs = song.gigography("saleandro")
      def gigography(username, page = 1)
        get "users/#{username}/gigography.#{format}", page
      end

      # Get tracked locations for a user
      # Example:
      # sg = Songkick.new("myapikey")
      # locations = sg.tracked_locations("saleandro")
      def tracked_locations(username, page = 1)
        get "users/#{username}/metro_areas/tracked.#{format}", page
      end

      # Get tracked artists for a user
      # Example:
      # sg = Songkick.new("myapikey")
      # artists = sg.tracked_artists("saleandro")
      def tracked_artists(username, page = 1)
        get "users/#{username}/artists/tracked.#{format}", page
      end

      # Track an artist
      def track_artist(username, artist_id)
        get "users/#{username}/trackings/artist:#{artist_id}.#{format}"
      end

      # Track a location
      def track_location(usersame, location_id)
        get "users/#{username}/trackings/metro_area:#{location_id}.#{format}"
      end

    end
  end
end