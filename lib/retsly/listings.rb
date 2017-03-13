require 'net/http'
require 'net/https'
require 'json'

module Retsly
  class Listings
    def self.retrieve
      endpoint_host = "rets.io"

      request_url = "/api/v1/#{Retsly.vendor}/listings?access_token=#{Retsly.access_token}"

      http = Net::HTTP.new(endpoint_host, 443)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_PEER
      http.open_timeout = Retsly.open_timeout
      http.read_timeout = Retsly.read_timeout

      response = http.get(request_url, {'Accept' => 'application/json'})

      JSON.parse(response.body)
    end
  end
end
