#part 5

class Rectangle
  attr_reader :length, :width
  attr_accessor :x, :y

  def initialize(length, width, x = 0, y = 0)
    @length = length
    @width = width
    @x = x
    @y = y
  end

  def area
    @area = @length * @width
  end

  def diagonal
    @diagonal = Math.sqrt(@length ** 2 + @width ** 2)
  end

  def move_down
    (@y -= 1)
  end

  def move_up
    (@y += 1)
  end

  def move_right
    (@x += 1)
  end

  def move_left
    (@x -= 1)
  end

end

Rectangle.new(7, 8)
