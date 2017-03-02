describe Player do
  let(:player_one) {Player.new("Teddy", "X")}
  context "initializes with a name and character for player one and two" do
    it "initializes with a name" do
      expect(player_one.name).to eq("Teddy")
    end
    it "initializes with a character" do
      expect(player_one.character).to eq("X")
    end
  end
end
