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
      # gigs = song.gigography("saleandro ")
      def gigography(username, page = 1)
        get "users/#{username}/gigography.#{format}", page
      end

    end
  end
end