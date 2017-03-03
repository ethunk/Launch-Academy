#step one

class Student
  attr_reader :first_name, :last_name, :grades

  def initialize(first_name, last_name, grades)
    @first_name = first_name
    @last_name = last_name
    @grades = grades
  end
end

puts ""
puts "===="
puts ""
#step two
class Student
  attr_reader :first_name, :last_name, :grades

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @grades = info[:grades]
  end
end
puts ""
puts "===="
puts ""
#step three
class Student
  attr_reader :first_name, :last_name, :grades

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @grades = info[:grades]
    @average = average
  end

  def average
    sum = 0.0
    @grades.each do |grade|
      sum += grades
    end
    sum/@grades.length
  end  
end
