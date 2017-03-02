#code goes here
require'pry'

class COFFEE
  def initialize(oz, max)
    @oz = oz
    @max = max
  end

  def sip!
    if @amount > 0
      @amount -= 1
    else
      puts "Hey! You need a refill!"
    end
  end

  def spill!
    @amount = 0
  end

  def refill!
    @amount = @max
  end

  def to_s
   "There is #{@amount}oz of coffee left in your #{@max}oz cup."
 end
end

COFFEE.new(8, 12)
