require "retsly/version"
require "retsly/listings"
require "retsly/connection"

module Retsly
  @open_timeout = 30
  @read_timeout = 80

  class << self
    attr_accessor :access_token, :vendor, :open_timeout, :read_timeout
  end
end
