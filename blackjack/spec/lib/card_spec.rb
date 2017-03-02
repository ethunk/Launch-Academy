require "spec_helper"

RSpec.describe Card do
  let(:card) {Card.new(4, "♣")}

  it "initialize" do
    expect(card.rank).to eq(4)
    expect(card.suit).to eq("♣")
  end
end
