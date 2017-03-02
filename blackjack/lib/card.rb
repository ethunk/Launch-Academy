require_relative 'deck.rb'

class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def face_card
    if @rank =~ /[JQK]/
      @rank
    end
  end

  def ace
    if @rank =~ /[A]/
      @rank
    end
  end
end
