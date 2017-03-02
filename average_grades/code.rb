#code goes here

def average(grades)
  sum = 0
    grades.each do |grade|
      sum += grade
    end

    sum / grades.size.to_f
end

janes_grades = [98, 95, 88, 97, 74]
janes_average = average(janes_grades)
puts janes_average

samanthas_grades = [85, 93, 98, 88, 49]
samanthas_average = average(samanthas_grades)
puts samanthas_average

matts_grades = [87, 93, 89, 97, 65]
matts_average = average(matts_grades)
puts matts_average

puts ""
puts "===="
puts ""

def letter_grade(average)
  if average >= 90
    'A'
  elsif average >= 80
    'B'
  elsif average >= 70
    'C'
  elsif average >= 60
    'D'
  else
    'F'
  end
end

janes_letter_grade = letter_grade(janes_average)
puts janes_letter_grade

samanthas_letter_grade = letter_grade(samanthas_average)
puts samanthas_letter_grade

matts_letter_grade = letter_grade(matts_average)
puts matts_letter_grade


puts ""
puts "===="
puts ""

def winners(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student}"
  end
end

winners(["Johnny", "Jane", "Sally", "Elizabeth", "Michael"])
