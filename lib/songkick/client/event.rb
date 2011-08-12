module Songkick
  class Client
    module Event

      def find_event(event_id)
        get "events/#{event_id}.#{format}"
      end

    end
  end
end