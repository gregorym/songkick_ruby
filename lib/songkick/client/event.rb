module Songkick
  class Client
    module Event

      def find_event(event_id, page = 1)
        get "events/#{event_id}.#{format}", page
      end

    end
  end
end