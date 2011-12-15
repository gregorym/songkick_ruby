module Songkick
  class Client
    module Calendar

      # Find upcoming events for an artist
      #
      # Example:
      # sg = Songkick.new("myapikey")
      # events = sg.artist_calendar(123)
      # or events = sg.artist_calendar(123, 2)
      #
      # The first argument is the artist_id
      # and the second argument is the page number,
      # by default it is set to 1
      def artist_calendar(artist_id, page = 1)
        get "artists/#{artist_id}/calendar.#{format}", page
      end

      # Find upcoming events for a location
      #
      # Example:
      # sg = Songkick.new("myapikey")
      # events = sg.location_calendar(123)
      # or events = sg.location_calendar(123, 2)
      #
      # The first argument is the artist_id
      # and the second argument is the page number,
      # by default it is set to 1
      def location_calendar(location_id, page = 1)
        get "metro_areas/#{location_id}/calendar.#{format}", page
      end

      # Find upcoming events for a user
      #
      # Example:
      # sg = Songkick.new("myapikey")
      # events = sg.users(123)
      # or events = sg.users(123, 2)
      #
      # The first argument is the artist_id
      # and the second argument is the page number,
      # by default it is set to 1
      def user_calendar(username, page = 1)
        get "users/#{username}/calendar.#{format}", page
      end

      # Find upcoming events for a venue
      #
      # Example:
      # sg = Songkick.new("myapikey")
      # or events = sg.usersvenue_calendar(123)
      #
      # The first argument is the venue_id
      # and the second argument is the page number,
      # by default it is set to 1
      def venue_calendar(venue_id, page = 1)
        get "users/#{venue_id}/venues.#{format}", page
      end
    end
  end
end