module Songkick
  class Client
    module Event

      class << self

        def find_event(event_id)
          get "/events/#{event_id}.#{format}"
        end
        
      end

    end
  end
end