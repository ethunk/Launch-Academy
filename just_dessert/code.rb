#code goes here
require'pry'

class CookieInventory
  attr_accessor :peanut_butter, :chocholate_chip, :sugar, :cookie, :amount

  def initialize
    @cookies = {
      peanut_butter: 0,
      chocholate_chip: 0,
      sugar: 0
      }
      @amount = 0
  end

  def cook_batch!(cookie, amount)
    if @cookies.keys.include?(cookie)
      @cookies[cookie] += amount
      "We baked #{@cookies[cookie]} cookies!"
    else
      "Sorry we don't have that cookie here."
    end

  end

  def sell!(cookie, amount)
    if @cookies.keys.include?(cookie)
      @cookies[cookie] -= amount
      if @cookies[cookie] <= 0
        "We sold out!"
      else
        "We sold #{@cookies[cookie]} of cookies!"
      end
    else
      "Sorry we don't have that cookie here."
    end
  end

end

cookie_monster = CookieInventory.new
binding.pry
