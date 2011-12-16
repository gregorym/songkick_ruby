require "songkick/client/errors"

module Songkick
  module Validations
    include Errors
    
    def validate_options(valid_opts, opts)
      if (opts.keys.map(&:to_s) - valid_opts).any?
        raise InvalidOptions
      end
    end 
  
  end
end