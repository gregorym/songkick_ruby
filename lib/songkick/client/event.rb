module Songkick
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

    # Returns the setlists for a specific event.
    #
    # Example:
    # sg = Songkick.new("myapikey")
    # set_list = sg.event_set_lists(123)
    # The first argument is the event id
    def event_set_lists(event_id)
      get "events/#{event_id}/setlists.#{format}"
    end

  end
end