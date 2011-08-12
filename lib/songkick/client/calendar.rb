module Songkick
  class Client
    module Calendar

      def artist_calendar(artist_id, page = 1)
        get "artists/#{artist_id}/calendar.#{format}", page
      end

      def location_calendar(location_id, page = 1)
        get "metro_areas/#{location_id}/calendar.#{format}", page
      end

      def user_calendar(username, page = 1)
        get "users/#{artist_id}/calendar.#{format}", page
      end

    end
  end
end