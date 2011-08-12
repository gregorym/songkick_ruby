module Songkick
  class Client
    module Request

      private
      
      def get(url, page)
        uri = generate_uri(url, page)

        response = Net::HTTP.get_response(uri)
        json? ? JSON.parse(response.body) : response.body
      end

      def generate_uri(url, page)
        uri = API_URL + url
        uri += uri.include?("?") ? "&page=#{page}" : "?page=#{page}" if page.to_i > 1
        uri = URI.parse uri.include?("?") ? uri + "&apikey=#{api_key}" : uri + "?apikey=#{api_key}"
        print 
        uri
      end

    end
  end
end