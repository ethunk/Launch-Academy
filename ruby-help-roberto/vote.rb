vote_demo =[
  {"Jon Smith" => {"Age": 25, "Income": 50_000, "Household_Size": 1, Gender: "Male", Education: "College"}},
  {"Jane Davies" => {"Age": 30, "Income": 60_000, "Household_Size": 3, Gender: "Female", Education: "High School"}},
  {"Sam Farelly" => {"Age": 32, "Income": 80_000, "Household_Size": 2, Gender: "Unspecified", Education: "College"}},
  {"Joan Favreau" => {"Age": 35, "Income": 65_000, "Household_Size": 4, Gender: "Female", Education: "College"}},
  {"Sam McNulty" => {"Age": 38, "Income": 63_000, "Household_Size": 3, Gender: "Male", Education: "College"}},
  {"Mark Minahan" => {"Age": 48, "Income": 78_000, "Household_Size": 5, Gender: "Male", Education: "High School"}},
  {"Susan Umani" => {"Age": 45, "Income": 75_000, "Household_Size": 2, Gender: "Female", Education: "College"}},
  {"Bill Perault" => {"Age": 24, "Income": 45_000, "Household_Size": 1, Gender: "Male", Education: "Did Not Complete High School"}},
  {"Doug Stamper" => {"Age": 45, "Income": 75_000, "Household_Size": 1, Gender: "Male", Education: "College"}},
  {"Francis, Underwood" => {Age: 52, "Income": 100_000, "Household_Size": 2, Gender: "Male", Education: "College"}}
]


vote_demo.each do |voter|
   voter.each do |k, v|
     puts v[0]
  end
end
