require'pry'

class Theater
  attr_accessor :admitted, :capacity

  def initialize(seats)
    @capacity = seats
    @admitted = 0
  end

  def admit!(patrons = 1)
    if @admitted + patrons > @capacity
      "Sorry! We're at capacity! Try again later."
    else
      @admitted += patrons
    end
  end

  def at_capacity?
    @admitted == @capacity
  end

  def record_walk_outs!(patrons = 1)
    @admitted -= patrons
  end
end

binding.pry
