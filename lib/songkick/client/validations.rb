module Songkick
  module Validations
    
    class << self
      def validate_options(option)
        eval("@valid_option_for_#{option.key} = option.value") 
      end 
    end

  end
end