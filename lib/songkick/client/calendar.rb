module Songkick
  class Client
    module Calendar

      def artist_calendar(artist_id)
        get "artists/#{artist_id}/calendar.#{format}"
      end

      def location_calendar(metro_areas)
        get "metro_areas/#{location_id}/calendar.#{format}"
      end

      def user_calendar(username)
        get "users/#{artist_id}/calendar.#{format}"
      end

    end
  end
end