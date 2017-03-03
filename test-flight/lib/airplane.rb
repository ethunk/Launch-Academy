require'pry'

class Airplane

  attr_reader :type, :wing_loading, :horsepower

  def initialize(type, wing_loading, horsepower)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @on = false
    @airborn = "airplane launched"
    @grounded = "airplane landed"
  end

  def start
    if @on
      "airplane already started"
    else
      @on = true
      "airplane started"
    end
  end

  def takeoff
    if @on
      "airplane not started, please start"
    else
      @airborn
    end
  end

  def land
    if @on && @airborn
      @grounded
    else 
      "airplane not started, please start"
    end

  end

end
