require_relative 'card.rb'
require_relative 'deck.rb'
require_relative 'hand.rb'
require'pry'

class Blackjack
  attr_reader :deck, :first_deal, :player_hand, :dealer_hand,

  def initialize
    @deck = Deck.new
    @first_deal = deck.deal(2)
    @deal = @deck.deal(1)
  end

  def new_round
    puts "Welcome to Blackjack, let's play!"
    @player_hand = Hand.new(@first_deal)
    puts "The player was dealt with #{@player_hand[0]}"
    puts "The player was dealt with #{@player_hand[1]}"
    @dealer_hand = Hand.new(@first_deal)
    puts "The dealer was dealt with #{@dealer_hand[0]}"
    puts "The dealer was dealt with #{@dealer_hand[1]}"
  end

  def player_play
    if @player_hand.calculate_hand == 21
      puts "Blackjack! You win!"
    else
      until answer == 'stay' || @player_hand.calculate_hand == 21 || @player_hand.calculate_hand > 21
        puts "Would you like to 'hit' or 'stay'?"
        answer = gets.chomp
        if answer == "hit"
          @player_hand << @deal
          @player_hand.calculate_hand
        elsif @player_hand.calculate_hand > 21
          puts "You busted, sorry."
        elsif @player_hand.calculate_hand == 21
          puts "Blackjack! You win!"
        end
      end
    end
    puts "The player's score is: #{@player_hand.calculate_hand}"
  end

  def dealer_play
    if @dealer_hand.calculate_hand == 21
      puts "Blackjack! You win!"
    else
      until answer == 'stay' || (@dealer_hand.calculate_hand >= 17 && @dealer_hand.calculate_hand) < 21 || @dealer_hand.calculate_hand > 21 || @dealer_hand.calculate_hand == 21
        puts "Would you like to 'hit' or 'stay'?"
        answer = gets.chomp
        if @dealer_hand.calculate_hand < 17
          @dealer_hand << @deal
          @dealer_hand.calculate_hand
        elsif @dealer_hand.calculate_hand > 21
          puts "Dealer busted, sorry."
        elsif @dealer_hand.calculate_hand == 21
          puts "Blackjack! You win!"
        end
      end
    end
    puts "The dealer's score is: #{@dealer_hand.calculate_hand}"
  end

  def winner
    if @player_hand.calculate_hand > @dealer_hand.calculate_hand
      puts "Player wins."
    elsif @player_hand.calculate_hand < @dealer_hand.calculate_hand
      puts "Dealer wins"
    elsif @player_hand.calculate_hand = @dealer_hand.calculate_hand
      puts "Tie, hit for winner"
      until @player_hand.calculate_hand > @dealer_hand.calculate_hand || @player_hand.calculate_hand < @dealer_hand.calculate_hand
        @player_hand << @deal
        @dealer_hand << @deal
        @player_hand.calculate_hand
        @dealer_hand.calculate_hand
      end
      if @player_hand.calculate_hand > @dealer_hand.calculate_hand
        puts "Player wins."
      elsif @player_hand.calculate_hand < @dealer_hand.calculate_hand
        puts "Dealer wins"
      end
    end
  end

end
