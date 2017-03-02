require_relative 'handle_items'
class Truck
  include HandleItems

  attr_reader :max_inventory, :inventory

  def initialize
    @max_inventory = 10
    @inventory = []
  end
end
