module Retsly
  class Listings
    def self.retrieve
      Retsly::Connection.get("listings")
    end
  end
end
