require 'pry'
require_relative 'cage'
require_relative 'employee'
require_relative 'zoo_at_capacity'

class Zoo
  require 'time'
  attr_reader :name, :season_opening_date, :season_closing_date, :employees, :cages
  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @employees = []
    @cages = Array.new(10) { Cage.new }
  end

  def cages
    @cages
  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    if @season_opening_date <= season_closing_date && season_closing_date >= date
      true
    else
      false
    end
  end

  def add_animal(animal)
    empty_cage = @cages.find{|cage| cage.empty?}
    if !empty_cage.nil?
      empty_cage.animal = animal
    else
      raise ZooAtCapacity
    end
  end

  def visit
    talking = ""
    @employees.each do |employee|
      talking << employee.greet + "\n"
    end
    @cages.each do |cage|
      talking << cage.animal.speak + "\n" if !cage.empty?
    end
    talking
  end
end
