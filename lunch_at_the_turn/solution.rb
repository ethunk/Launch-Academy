menu = {
  "Hamburger" => 4.00,
  "Hot Dog" => 3.00,
  "Fries" => 2.00,
  "Chips" => 1.00,
  "Water" => 1.25,
  "Soda" => 1.50
}

items_not_found = nil
items = []
while items_not_found.nil? || !items_not_found.empty?
  puts "Welcome to Goodburger, home of the Goodburger! Can I take your order?
"
  order = gets.chomp
  items = order.split(",")

  items_not_found = items - menu.keys

  if !items_not_found.empty?
    items_not_found.each do |item|
      puts "Sorry! We don't have '#{item}' on the menu."
    end
  end
end

total = 0
items.each do |item|
  total += menu[item]
end

puts "Thank you, your total is $#{total.to_s}"
