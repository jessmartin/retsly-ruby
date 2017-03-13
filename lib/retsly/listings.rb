module Retsly
  class Listings
    def self.retrieve
      Retsly::Connection.get("listing")
    end
  end
end
