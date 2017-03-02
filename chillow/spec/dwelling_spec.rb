require 'spec_helper'

describe Dwelling do
  let(:home) {Dwelling.new("13 Maple Drive", "Albany", "NY", "12205")}

  context "prints address details" do
    it "returns a street number and name" do
      expect(home.address).to eq("13 Maple Drive")
    end
    it "returns a city" do
      expect(home.city).to eq("Albany")
    end
    it "returns a state" do
      expect(home.state).to eq("NY")
    end
    it "returns a zip code" do
      expect(home.zipcode).to eq("12205")
    end
  end
end
