#code goes here

class Theater
  attr_accessor :seats, :patrons

  def initialize(number_of_seats)
    @seats = number_of_seats
    @patrons = 0
  end

  def admit!(ticket = 1)
    if @patrons + ticket > @seats
      puts "Sorry we are at capacity."
    else
      @patrons += ticket
    end
  end

  def at_capacity?
    @patrons = @seats
  end

  def record_walk_outs!(ticket = 1)
    @patrons - ticket
  end

end

Theater.new(100)
