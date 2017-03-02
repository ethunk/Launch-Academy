class Team
  attr_reader :name, :rank, :wins, :losses
  attr_accessor :rank

  def initialize(name, rank = nil, wins = 0, losses = 0)
    @name = name
    @rank = rank
    @wins = wins
    @losses = losses
  end

  def add_win
    @wins += 1
  end

  def add_loss
    @losses += 1
  end
end
