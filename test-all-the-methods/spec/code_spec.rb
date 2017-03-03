require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

describe "perimeter" do
  it "returns 20 for a square with a width of 5" do
    expect(perimeter(5)).to eq(20)
  end

  it "returns 30 for a rectangle with a width of 5 and a length of 10" do
    expect(perimeter(5, 10)).to eq(30)
  end
end

describe "average" do
  it "returns average from grade list" do
    grade_list = [95, 80, 90, 100, 90]
    result = average(grade_list)
    expect(result).to eq(91)
  end
end

describe "rankings" do
  it "returns a ranked list of students" do
    result = rankings(["Teddy", "Carmen", "Seth", "Bob"])
    expect(result).to eq("1. Teddy\n2. Carmen\n3. Seth\n4. Bob\n")
  end
end

describe "greet" do
  it "spanish greeting" do
    expect(greet("Teddy", 'spanish')).to eq("Hola Teddy!")
  end
  it "italian greeting" do
    expect(greet("Teddy", 'italian')).to eq("Ciao Teddy!")
  end
  it "french greeting" do
    expect(greet("Teddy", 'french')).to eq("Bonjour Teddy!")
  end
  it "default greeting" do
    expect(greet("Teddy")).to eq("Hi Teddy!")
  end
end

describe "create_puzzle" do
  it "word guess" do
    expect(create_puzzle("hockey")).to eq("_ _ _ _ _ _")
  end
  it "correct guesses" do
    expect(create_puzzle("hockey",["a", "e", "o", "h"])).to eq("h o _ _ e _")
  end
end
describe "divisible_by_three" do
  it "number is divisible by 3" do
    expect(divisible_by_three(3)).to eq(true)
  end
  it "number is not divisible by 3" do
    expect(divisible_by_three(4)).to eq(false)
  end
end

describe "perfect_square?" do
  context "when testing number less than 1" do
    it "raises an argument error" do
      expect{ perfect_square?(0) }.to raise_error(ArgumentError)
    end
  end

  context "when testing the number 36, which has a perfect square" do
    it "returns true" do
      result = perfect_square?(36)
      expect(result).to eq(true)
    end
  end

  context "when testing the number 7, which does not have a perfect square" do
    it "returns false" do
      result = perfect_square?(7)
      expect(result).to eq(false)
    end
  end
end
