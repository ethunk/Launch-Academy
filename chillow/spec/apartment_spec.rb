require 'spec_helper'

describe Apartment do
  let(:apartment) {Apartment.new("1090 Christy Lane", "Rochelle Park", "NJ", "07662", 2500, "2007-06-01", "2008-06-01")}
  let (:teddy) {Occupant.new("Teddy", "Stanowski")}

  context "prints address details" do
    it "returns a street number and name" do
      expect(apartment.address).to eq("1090 Christy Lane")
    end
    it "returns a city" do
      expect(apartment.city).to eq("Rochelle Park")
    end
    it "returns a state" do
      expect(apartment.state).to eq("NJ")
    end
    it "returns a zip code" do
      expect(apartment.zipcode).to eq("07662")
    end
  end
  context "prints rent agreement details" do
    it "returns rent amount" do
      expect(apartment.rent).to eq(2500)
    end
    it "returns lease start year" do
      expect(apartment.lease_start_date.year).to eq(2007)
    end
    it "returns lease start month" do
      expect(apartment.lease_start_date.month).to eq(6)
    end
    it "returns lease start day" do
      expect(apartment.lease_start_date.day).to eq(1)
    end
    it "returns lease end year" do
      expect(apartment.lease_end_date.year).to eq(2008)
    end
    it "returns lease end month" do
      expect(apartment.lease_end_date.month).to eq(6)
    end
    it "returns lease end day" do
      expect(apartment.lease_end_date.day).to eq(1)
    end
  end
  it 'adds a roomate when apartment is not full' do
    apartment.add_item(teddy)
    expect(apartment.inventory.include?(teddy)).to eq(true)
  end

  it 'adds returns full when apartment is full' do
    3.times do
      apartment.add_item(teddy)
    end
    expect(apartment.add_item(teddy)).to eq('full')
  end

  it 'removes a roommate when at least one resident' do
    apartment.add_item(teddy)
    apartment.add_item(teddy)
    expect(apartment.remove_item(teddy)).to eq("removed")
  end

  it 'returns empty when trying to remove roommate from empty apartment' do
    expect(apartment.remove_item(teddy)).to eq('not there')
  end
end
