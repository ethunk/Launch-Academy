module PartyGoer
  require_relative 'PersonalizedHavocError'
  def initialize
    @drinks = 0
  end

  def drink
    @drinks += 1
    if @drinks < 4
      return true
    else
      return false
    end
  end

  def sing
    "Don'stop! Believing! Hold onto that feeling!"
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end
end
