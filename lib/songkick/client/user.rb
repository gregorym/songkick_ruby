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
        get "users/#{username}/metro_areas/tracked.json", page
      end

      # Get tracked artists for a user
      # Example:
      # sg = Songkick.new("myapikey")
      # artists = sg.tracked_artists("saleandro")
      def tracked_artists(username, page = 1)
        get "users/#{username}/artists/tracked.json", page
      end

    end
  end
end