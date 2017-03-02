require 'spec_helper'

describe Board do
  let (:board) {Board.new}

  describe "#initialize" do
    it "can be initialized with seven columns and six rows" do
      expect(board.rows).to eq(6)
      expect(board.columns).to eq(7)
    end
  end

  describe "#print" do
    it "prints 6 rows and 7 columns" do
      board_printout =
      "|___|___|___|___|___|___|___|\n" +
      "|___|___|___|___|___|___|___|\n" +
      "|___|___|___|___|___|___|___|\n" +
      "|___|___|___|___|___|___|___|\n" +
      "|___|___|___|___|___|___|___|\n" +
      "|___|___|___|___|___|___|___|\n"

      expect(board.print).to eq(board_printout)
    end
  end

  describe "#empty_spaces?" do
    it "returns true if space is nil" do
      expect(board.empty_spaces?).to eq(true)
    end
  end

end
