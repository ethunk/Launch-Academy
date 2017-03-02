require "spec_helper"

describe Hand do

  let(:hand1) { Hand.new(["10♦", "J♥"]) }
  let(:hand2) { Hand.new(["3♣", "A♠", "8♦"]) }
  let(:hand3) { Hand.new(["10♥", "A♣"]) }

  describe "#calculate_hand" do
    context "counts cards total" do
      it "counts hand 1" do
        expect(hand1.calculate_hand).to eq(20)
      end
      it "counts hand 2" do
        expect(hand2.calculate_hand).to eq(12)
      end
      it "counts hand 3" do
        expect(hand3.calculate_hand).to eq(21)
      end
    end
  end
end
