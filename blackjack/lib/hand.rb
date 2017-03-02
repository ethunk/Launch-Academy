require_relative 'deck.rb'
require_relative 'card.rb'

class Hand
 attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    total = 0
    @cards.each do |card|
      if card.face_card
        total += 10
      elsif card.ace && total <=10
          total += 11
      elsif card.ace && total > 10
          total += 1
      else
        total = total + card.rank.to_i
      end
    end
    total
  end
end
