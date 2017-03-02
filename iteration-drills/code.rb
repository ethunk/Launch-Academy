require'pry'

#Write Ruby<->English answers here as comments in your code
#1. For every number, multiply by 3
#2. For every name, output the length
#3. For every number, add up to output the sum/total
#4. For every name outputed, also list the age of the name
#5. Add up all the transactions (value) to output the sum/total
#6. List every name and where that name lives (value)

array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# Write Ruby code to find out the answers to the following questions:

# * What is the sum of all the numbers in `array`?
sum = 0
array.each do |number|
  sum = sum + number
end
puts "The sum is #{sum}"
puts "========"
# * How would you print out each value of the array?
array.each do |number|
  puts number
end
puts "========"
# * What is the sum of all of the even numbers?
sum = 0
pos_array = array.select { |number| number.even? }
pos_array.each do |x|
  sum = sum + x
end
puts "The sum of the even numbers is #{sum}"
puts "========"
# * What is the sum of all of the odd numbers?
sum = 0
odd_array = array.select { |number| number.odd? }
odd_array.each do |o|
  sum = sum + o
end
puts "The sum of the odd numbers is #{sum}"
puts "========"
# * What is the sum of all the numbers divisble by 5?
sum = 0
five_array = array.select { |number| number % 5 }
five_array.each do |div|
  sum = sum + div
end
puts "The sum of the numbers divisible by 5 is #{sum}"
puts "========"
# * What is the sum of the squares of all the numbers in the array?
sum = 0
square_array = array.select { |number| number ** 2 }
square_array.each do |i|
  sum = sum + i
end
puts "The sum of the numbers squared is #{sum}"
puts "========"

array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:

# * How would you print out each name backwards in `array`?
puts array.reverse
puts "========"
# * What are the total number of characters in the names in `array`?
sum = 0
array.each do |name|
  sum = sum + name.length
end
puts sum
puts "========"
# * How many names in `array` are less than 5 characters long?
short_array = array.select { |name| name.length < 5 }
puts short_array.count
puts "========"
# * How many names in `array` end in a vowel?
vowel_array = array.select { |name| name[-1] == "a" || name[-1] == "e" || name[-1] == "i" || name[-1] == "o" || name[-1] == "u"}
puts vowel_array.count
puts "======= ="
# * How many names in `array` are more than 5 characters long?
short_array = array.select { |name| name.length < 5 }
puts short_array.count
puts "========"
# * How many names in `array` are exactly 5 characters in length?
equal_array = array.select { |name| name.length == 5 }
puts equal_array.count
puts "========"

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

#  Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of the artists?
best_records.each do |artist, album|
  puts artist
end
puts "========"
# * How would you print out all the names of the albums?
best_records.each do |artist, album|
  puts album
end
puts "========"
# * Which artist has the longest name?
long_name = best_records.keys.sort_by { |key| key.length}
puts long_name[-1]
puts "========"
# * How would you change all the album titles for every artist to `Greatest Hits`?
best_records["Tupac"] = "Great Hits"
best_records["Eminem"] = "Great Hits"
best_records["Wu-Tang Clan"] = "Great Hits"
best_records["Led Zeppelin"] = "Great Hits"
best_records["Metallica"] = "Great Hits"
best_records["Pink Floyd"] = "Great Hits"
best_records["Pearl Jam"] = "Great Hits"
best_records["Nirvana"] = "Great Hits"
best_records.each do |artist, album|
  puts "#{artist} - #{album}"
end
puts "========"
# * How would you delete a key-value pair if the artist's name ends in a vowel?
new_list = best_records.delete_if { |artist, album| artist[-1] == "a" || artist[-1] == "e" || artist[-1] == "i" || artist[-1] == "o" || artist[-1] == "u"}
new_list.each do |artist, album|
  puts "#{artist} - #{album}"
end
puts "========"

ages = {"Arch"=>89, "Gretchen"=>93, "Simone"=>12, "Daija"=>96, "Alivia"=>22, "Serena"=>28, "Alek"=>3, "Lula"=>24, "Christian"=>62, "Darryl"=>47, "Otha"=>32, "Evalyn"=>44, "Lincoln"=>27, "Rebeca"=>99, "Beatrice"=>99, "Kelton"=>10, "Zachary"=>18, "Aurelie"=>91, "Dell"=>71, "Lisandro"=>22}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `ages`?
ages.each do |name, age|
  puts "#{name}"
end
puts "========"
# * How would you print out each key-value pair in the format of `<name> is <age> years old.`?
ages.each do |name, age|
  puts "#{name} is the age of #{age}"
end
puts "========"
# * How would you print out every person with odd numbered age?
odd_ages = ages.select { |name, age| age.odd? }
odd_ages.each do |name, age|
  puts "#{name} is the age of #{age}"
end
puts "========"
# * How would you delete everyone under 25 years of age?
old_ages = ages.delete_if { |name, age| age < 25 }
old_ages.each do |name, age|
  puts "#{name} is the age of #{age}"
end
puts "========"
# * What is the name and age of everyone with a name greater than or equal to 5 characters?
long_name_age = ages.select { |name, age| name.length >= 5 }
long_name_age.each do |name, age|
  puts "#{name} is the age of #{age}"
end
puts "========"

people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Dominick",
          "Tricia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nietzsche and Dickinson"
  }
}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `people`?
people.keys.each do |name|
  puts "#{name}"
end
puts "========"
# * How would you print out all the names of `people` and which company they work for?

people.each do |key, value|
  puts "#{key} works at #{value["company"]}"
end
puts "========"
# * What are the names of all the children of everyone in `people`?
people.each do |key, value|
  puts value["children"]
end
puts "========"
# * What are the names of all the companies that people work for?
people.each do |key, value|
  puts value["company"]
end
puts "========"
# * How would you convert all the phone numbers to the same standard (pick one)?
people.each do |key, value|
  phones = value["phone"]

  phones.gsub!(/[.]/, "-")
  phones.gsub!(/[()]/, "")
  phones.gsub!(/[" "]/, "-")

  if phones.length == 12
    phones.insert(0, "1-")
  end
  puts phones

end
puts "========"
people2 =
[
    {
          "Derek Wehner" => {
               "phone" => "588-047-7782",
             "company" => "Daniel-Carroll",
            "children" => [
                "Phoebe",
                "Gretchen",
                "Wiley"
            ]
        },
           "Ali Koelpin" => {
               "phone" => "1-127-057-0020",
             "company" => "Rau, Rutherford and Lockman",
            "children" => [
                "Juwan"
            ]
        },
        "Ervin Prohaska" => {
               "phone" => "(393) 630-3354",
             "company" => "Carter Inc",
            "children" => [
                "Virgil",
                "Piper",
                "Josianne"
            ]
        },
          "Hellen Borer" => {
              "phone" => "1-687-825-0947",
            "company" => "Maggio, Ferry and Moen"
        }
    },
    {
        "Elinor Johnson" => {
              "phone" => "819.911.5553",
            "company" => "Pollich Group"
        }
    },
    {
        "Richmond Murray" => {
               "phone" => "1-516-432-2364",
             "company" => "Sporer and Sons",
            "children" => [
                "Kade",
                "Sage"
            ]
        },
            "Nakia Ferry" => {
               "phone" => "134-079-2237",
             "company" => "Hamill, O'Keefe and Lehner",
            "children" => [
                "Rollin"
            ]
        }
    }
]

# Write Ruby code to find out the answers to the following questions:

# * What are the names of everyone in `people`?
people2.each do |hash|
 hash.each do |key, value|
puts key
   end
 end

puts "========"
# * What are the names of all the children in `people`?
people2.each do |hash|
 hash.each do |key, value|

   if value["children"]
     value["children"].each do |child|
       puts child
     end
   end
 end
end
puts "========"
# * How would you create a new hash called `phone_numbers` that has a key of a name and value of a phone number in `people`?
phone_numbers = {}
people2.each do |hash|
  hash.each do |person, info|
    phone_numbers[person] = info["phone"]
  end
end

phone_numbers.each do |name, phone|
  puts "#{name}'s number is #{phone}"
end
puts "========"
# * How would you create a new hash called `employers` that has a key of a name and a value of a company name in `people`?
employers = {}
people2.each do |hash|
  hash.each do |person, info|
    employers[person] = info["company"]
  end
end

employers.each do |name, company|
  puts "#{name} works at #{company}"
end
puts "========"
# * How would you create a new hash called `children_count` that has a key of a name and a value of the number of children a person has?
children_count = {}
people2.each do |hash|
  hash.each do |person, info|
    children_count[person] = info["children"]
  end
end

children_count.each do |key, value|
  if value
      puts "#{key} has #{value.size} children"
    else
      puts "#{key} has no children."
  end
end
puts "========"
