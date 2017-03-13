require "spec_helper"

RSpec.describe Retsly::Listings do
  before do
    Retsly.vendor = 'test'
    Retsly.access_token = 'access_token'
  end

  describe ".retrieve" do 
    it "calls out to the listings API" do
      body = {
        bundle: []
      }

      stub_request(:get, 'https://rets.io/api/v1/test/listings?access_token=access_token').
        to_return(:status => 200, :body => body.to_json, headers: {'Content-Type' => 'application/json'})

      Retsly::Listings.retrieve
    end
  end
end
