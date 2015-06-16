require 'json'
require 'net/http'
module Hacienda
  class HaciendaStore

    def initialize(hacienda_url)
      @hacienda_url = hacienda_url
      @http_client = HttpClient.new
    end

    def get_public_item(type, id)
      get_content_for_url("#{@hacienda_url}/#{type}/#{id}/public", {"Accept-Language" => "en"})
    end

    def get_content_for_url(client_url, headers = {})
      client_response = @http_client.get_response(client_url, headers)
      JSON.parse(client_response.body, symbolize_names: true)
    end
  end

  class HttpClient

    def prepare_http(uri)
      http = Net::HTTP.new uri.host, uri.port
      http.use_ssl = true if uri.scheme == 'https'
      http
    end

    def get_response(url, headers)
      request = Net::HTTP::Get.new URI(url)

      headers.each do|header, value|
        request.add_field header, value
      end

      http = prepare_http(URI(url))

      http.request(request)
    end

  end

end
