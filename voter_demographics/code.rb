#code goes here
require'pry'
voters = {
  "Jon Smith" => {
    "age" => 25,
    "income" => 50000,
    "household size" => 1,
    "gender" => "Male",
    "education" => "College"
  },
  "Jane Davies" => {
    "age" => 30,
    "income" => 60000,
    "household size" => 3,
    "gender" => "Female",
    "education" => "High School"
  },
  "Sam Farelly" => {
    "age" => 32,
    "income" => 80000,
    "household size" => 2,
    "gender" => "Unspecified",
    "education" => "College"
  },
  "Joan Favreau" => {
    "age" => 35,
    "income" => 65000,
    "household size" => 4,
    "gender" => "Female",
    "education" => "College"
  },
  "Sam Mcnulty" => {
    "age" => 38,
    "income" => 63000,
    "household size" => 3,
    "gender" => "Male",
    "education" => "College"
  },
  "Mark Minahan" => {
    "age" => 48,
    "income" => 78000,
    "household size" => 5,
    "gender" => "Male",
    "education" => "High School"
  },
  "Susan Umani" => {
    "age" => 45,
    "income" => 75000,
    "household size" => 2,
    "gender" => "Female",
    "education" => "College"
  },
  "Bill Perault" => {
    "age" => 24,
    "income" => 45000,
    "household size" => 1,
    "gender" => "Male",
    "education" => "Did Not Complete High School"
  },
  "Doug Stamper" => {
    "age" => 45,
    "income" => 75000,
    "household size" => 1,
    "gender" => "Male",
    "education" => "College"
  },
  "Francis Underwood" => {
    "age" => 52,
    "income" => 100000,
    "household size" => 2,
    "gender" => "Male",
    "education" => "College"
  }
}

total_age = 0
average_age = 0

while average_age == 0 do
  voters.each do |voter, info|
    total_age = total_age + info["age"]
  end
  average_age = total_age/ voters.size
end

puts "The average age is #{average_age.to_s}"

puts "=========="

total_income = 0
average_income = 0

while average_income == 0 do
  voters.each do |voter, info|
    total_income = total_income + info["income"]
  end
  average_income = total_income / voters.size
end

puts "The average income is $#{average_income.to_s}"

puts "=========="

total_household = 0
average_household = 0

while average_household == 0 do
  voters.each do |voter, info|
    total_household = total_household + info["household size"]
  end
  average_household = total_household / voters.size
end

puts "The average household size is #{average_household.to_s}"

puts "=========="

total_female = 0

while total_female == 0 do
  voters.each do |voter, info|
    if info["gender"] == "Female"
      total_female += 1
    end
  end
end

female_ratio = (total_female.to_f / voters.size) * 100

puts "The percentage of women is #{female_ratio.to_f}%"

puts "=========="

total_male = 0

while total_male == 0 do
  voters.each do |voter, info|
    if info["gender"] == "Male"
      total_male += 1
    end
  end
end

male_ratio = (total_male.to_f / voters.size) * 100

puts "The percentage of men is #{male_ratio.to_f}%"

puts "=========="

total_unspecified = 0

while total_unspecified == 0 do
  voters.each do |voter, info|
    if info["gender"] == "Unspecified"
      total_unspecified += 1
    end
  end
end

unspecified_ratio = (total_unspecified.to_f / voters.size) * 100

puts "The percentage of unspecified is #{unspecified_ratio.to_f}%"

puts "=========="

total_college = 0

while total_college == 0 do
  voters.each do |voter, info|
    if info["education"] == "College"
      total_college += 1
    end
  end
end

college_ratio = (total_college.to_f / voters.size) * 100

puts "The percentage of College graduates is #{college_ratio.to_f}%"

puts "=========="

total_high_school = 0

while total_high_school == 0 do
  voters.each do |voter, info|
    if info["education"] == "High School"
      total_high_school += 1
    end
  end
end

high_school_ratio = (total_high_school.to_f / voters.size) * 100

puts "The percentage of High School only graduates is #{high_school_ratio.to_f}%"

puts "=========="

total_dropout = 0

while total_dropout == 0 do
  voters.each do |voter, info|
    if info["education"] == "Did Not Complete High School"
      total_dropout += 1
    end
  end
end

dropout_ratio = (total_dropout.to_f / voters.size) * 100

puts "The percentage of people who did not finish high school is #{dropout_ratio.to_f}%"

puts "=========="
