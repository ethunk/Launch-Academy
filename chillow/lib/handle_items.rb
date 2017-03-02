require 'pry'

module HandleItems

  def full?
    @inventory.count >= @max_inventory ? true : false
  end

  def add_item(name)
    if !self.full?
      @inventory << name
    else
      "full"
    end
  end

  def remove_item(name)
    # binding.pry
    if @inventory.include?(name)
      @inventory.delete(name)
      "removed"
    else
      "not there"
    end
  end

  def empty(name)
    @inventory.delete(name)
    "empty"
  end
end
