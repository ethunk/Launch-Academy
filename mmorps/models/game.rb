class Game
  attr_reader :hands, :player, :computer, :player_score, :computer_score

  def initialize
    @hands = ["Rock", "Paper", "Scissors"].sample
    @player = player
    @computer = computer
    @player_score = player_score
    @computer_score = computer_score
  end

end
