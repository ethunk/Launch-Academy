require 'spec_helper'

describe House do
  let(:home) {House.new("7109 Junction Village Avenue", "Las Vegas", "NV", "89119", 225000)}

  context "prints address details" do
    it "returns a street number and name" do
      expect(home.address).to eq("7109 Junction Village Avenue")
    end
    it "returns a city" do
      expect(home.city).to eq("Las Vegas")
    end
    it "returns a state" do
      expect(home.state).to eq("NV")
    end
    it "returns a zip code" do
      expect(home.zipcode).to eq("89119")
    end
    it "returns an asking price" do
      expect(home.asking_price).to eq(225000)
    end
  end
end
