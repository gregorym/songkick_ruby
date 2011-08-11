module Songkick
  class Client
    module Request

      private
      
      def get(url)
        uri = API_URL + url
        uri = URI.parse uri.include?("?") ? uri + "&apikey=#{api_key}" : uri + "?apikey=#{api_key}"
        
        response = Net::HTTP.get_response(uri)
        json? ? JSON.parse(response.body) : response.body
      end

    end
  end
end