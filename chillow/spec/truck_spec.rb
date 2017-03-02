require 'spec_helper'

describe Truck do
  let(:ram) {Truck.new}
  let(:teddy) {Occupant.new("Teddy", "Stanowski")}

  it "initializes an empty truck" do
    expect(ram.full?).to eq(false)
  end

  it "initializes a truck with a capacity of 10 boxes" do
    expect(ram.max_inventory).to eq(10)
  end

  it "add box" do
    ram.add_item(teddy)
    expect(ram.inventory.include?(teddy)).to eq(true)
  end

  it "removes box" do
    ram.remove_item(teddy)
    expect(ram.inventory.include?(teddy)).to eq(false)
end

  it "unloads all of Ryan's boxes" do
    4.times do
      ram.add_item(teddy)
    end
    ram.empty(teddy)
    expect(ram.inventory.include?(teddy)).to eq(false)
  end

  it "does not add a box to a full truck" do
    10.times do
      ram.add_item(teddy)
    end
    expect(ram.add_item(teddy)).to eq("full")
  end
end
