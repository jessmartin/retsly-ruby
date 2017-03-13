require 'net/http'
require 'net/https'
require 'json'

module Retsly
  class Connection
    def self.get(endpoint)
      endpoint_host = "rets.io"
      request_url = "/api/v1/#{Retsly.vendor}/#{endpoint}?access_token=#{Retsly.access_token}"

      http = Net::HTTP.new(endpoint_host, 443)
      configure_ssl(http)
      http.open_timeout = Retsly.open_timeout
      http.read_timeout = Retsly.read_timeout

      response = http.get(request_url, {'Accept' => 'application/json'})

      JSON.parse(response.body)
    end

    private

    def self.configure_ssl(http)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_PEER

      http
    end
  end
end
