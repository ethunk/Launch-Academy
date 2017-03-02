require_relative 'dwelling'
require_relative 'handle_items'
require 'time'

class Apartment < Dwelling
  include HandleItems

  attr_reader :rent, :lease_start_date, :lease_end_date, :inventory

  def initialize(address, city, state, zipcode, rent, lease_start_date, lease_end_date)
    super(address, city, state, zipcode)
    @rent = rent
    @lease_start_date = Date.parse(lease_start_date)
    @lease_end_date = Date.parse(lease_end_date)
    @inventory = []
    @max_inventory = 3
  end
end
