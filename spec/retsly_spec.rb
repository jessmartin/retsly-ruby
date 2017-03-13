require "spec_helper"

RSpec.describe Retsly do
  it "has a version number" do
    expect(Retsly::VERSION).not_to be nil
  end

  it "sets vendor appropriately" do
    Retsly.vendor = "testing"

    expect(Retsly.vendor).to eq("testing")
  end

  it "sets access token appropriately" do
    Retsly.access_token = "testing1234"

    expect(Retsly.access_token).to eq("testing1234")
  end
end
