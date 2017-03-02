# PUT CODE HERE!
box_1_items =
["flannel shirt", "bucket hat", "pipe","converse shoes",
"purple hair dye", "Ray Ban sunglasses", "combat boots",
"Warby Parker glasses", "overalls", "Doc Marten shoes",
"suspenders", "Fjallraven backpack", "wrap belt",
"denim cut-offs", "beanie", "muscle tank", "Hawaiian shirt",
"scarf", "misplaced handlebar mustache", "high-waisted jeans",
"denim shirt", "statement necklace", "knitted cardigan vest",
"stockings", "black leggings", "polka dot blouse", "kimono",
"cut-off shorts", "grandma's cardigan", "high-rise shorts",
"tartan shirt", "converse shoes", "fedora hat",
"brown flat shoes", "red nail polish", "polka dot tights",
"bracelet", "leather jacket", "skinny jeans",
"silver nail polish", "matte lipstick", "v-neck jumper",
"scarf", "beige shearling jacket", "fossil flower collar necklace",
"stone cross necklace", "loose knit tank top",
"mock neck open back tank top", "sequin tank top", "red sweater"]

puts "Dylan: Hey do you have any denim shirts?"
puts "Me: Let me check!"
puts "Me: *Goes through the box*"
if box_1_items.any? { |item| item = "denim shirt" }
  puts "Yes we do!"
else
  puts "Sorry, we don't have it. :()"
end
puts "======================="

puts "Me: Who's next?"
puts "Amy: Do you hvae nail polish?"
puts "Me: One sec! *Goes through box*"

if box_1_items.any? { |item| item = "black nail polish" }
  puts "The box contains black nail polish."
else
  box_1_itemsany? { |item| item = "silver nail polish" }
  puts "Unfortunately, this box does not contain black nail polish."
  puts "The box contains silver nail polish."
end

puts "======================="

box_2_items =
["Doc Martens Women's 1460 Re-Invented Victorian Print Lace Up Boot",
"Red Patent Lather Cutie Pie Pumps",
"Gold Metallic & Rhinestone Peep Toe Flats",
"White Bow Mila Flats",
"Royal Blue Classic Lace Up Sneakers Flats",
"White Patent Leather Button Up T-Strap Heels",
"Black Suede Faux Fur Open Toe Heels",
"Yellow Hello Sunshine Sonia Loafers",
"TUK Black Vintage Floral Vegan Starlet Pumps",
"White T-Strap Mary Jane Kitten Heels",
"Clear & Silver Glitter Heart Heels",
"Light Green & White Feather Pom Pom Mila Flats",
"White Classic Lace Up Sneaker Flats",
"Irregular Choice Glitter Star Wars The Golden Droid C-3PO Flats",
"Mint & White Color Block Emmie Saddle Shoes"]

puts "Amy: Can you list all the shoes you have in order?"
puts "Me: Sure can!"

box_2_items.each_with_index do |item, index|
puts "#{index += 1}. #{item}"
end

puts "======================="

box_3_items =
["skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans",
"skinny jeans", "skinny jeans", "skinny jeans"]

puts "Manager: Dylan is asking if we have skinny jeans. Is this box all of them?"
puts "Me: Let me see!"

if box_3_items.all? { |item| item = "skinny jeans" }
  puts "Yes this box is all skinny jeans."
else
  puts "No, it's a mixed box."
end
