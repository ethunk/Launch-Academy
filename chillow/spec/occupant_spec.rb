require 'spec_helper'

describe Occupant do
  let(:teddy) {Occupant.new("Teddy", "Stanowski")}

  it "returns a first name" do
    expect(teddy.first_name).to eq("Teddy")
  end

  it "returns a last name" do
    expect(teddy.last_name).to eq("Stanowski")
  end
end
