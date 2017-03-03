require_relative 'deck'

class Hand
  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    total = 0
    @cards.each do |card|
      if card.include?('J' || 'Q' || 'K')
        total += 10
      elsif card.include?('A')
        if @cards.count >= 3
          total += 1
        else
          total += 11
        end
      else
        total = total + card.to_i
      end
    end
    total
  end
end

deck = Deck.new
cards = deck.deal(2)
hand = Hand.new(cards)
# hand.calculate_hand # Get this working properly
