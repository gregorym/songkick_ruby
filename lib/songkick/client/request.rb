module Songkick
  module Request

    private
    
    # Perform a get request
    # and returns the response body in the correct format
    def get(url, page = 1)
      uri = generate_uri(url, page)

      response = Net::HTTP.get_response(uri)
      json? ? JSON.parse(response.body) : response.body
    end

    # Generate uri with aditionnal options
    # such as the page number and the api key
    def generate_uri(url, page)
      uri = API_URL + url
      uri += uri.include?("?") ? "&page=#{page}" : "?page=#{page}" if page.to_i > 1
      uri = URI.parse uri.include?("?") ? uri + "&apikey=#{api_key}" : uri + "?apikey=#{api_key}"
      uri
    end

  end
end