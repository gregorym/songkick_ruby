module Songkick
  class Client
    module Event

    	# Find detailed information about an event
    	#
    	# Example:
    	# sg = Songkick.new("myapikey")
    	# event = sg.find_event(123)
    	# The first argument is the event id
      def find_event(event_id)
        get "events/#{event_id}.#{format}"
      end

    end
  end
end