class BoundingBox
  attr_reader :width, :height

  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def left
    @x
  end

  def right
    @x + @width
  end

  def top
    @y + @height
  end

  def bottom
    @y
  end

  def contains_point?(point_x, point_y)
    if left <= point_x && point_x <= right && bottom <= point_y && point_y <= top
      return true
    else
      return false
    end
  end

end
