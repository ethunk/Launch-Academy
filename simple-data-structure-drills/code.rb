require 'pry'

transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions:

# * What is the value of the first transaction?
puts transactions[0]
puts "==========="
# * What is the value of the second transaction?
puts transactions[1]
puts "==========="
# * What is the value of the fourth transaction?
puts transactions[3]
puts "==========="
# * What is the value of the last transaction?
puts transactions[-1]
puts "==========="
# * What is the value of the second from last transaction?
puts transactions[-2]
puts "==========="
# * What is the value of the 5th from last transaction?
puts transactions[-5]
puts "==========="
# * What is the value of the transaction with index 5?
puts transactions[5]
puts "==========="
# * How many transactions are there in total?
puts transactions.count
puts "==========="
# * How many positive transactions are there in total?
puts transactions.count { |transaction| transaction > 0}
puts "==========="
# * How many negative transactions are there in total?
puts transactions.count { |transaction| transaction < 0}
puts "==========="
# * What is the largest withdrawal?
amounts = transactions.sort
puts amounts[0]
puts "==========="
# * What is the largest deposit?
puts amounts[-1]
puts "==========="
# * What is the small withdrawal?
neg_withdrawal = transactions.select { |transaction| transaction.negative?}
smallest_withdarwal = neg_withdrawal.sort
puts smallest_withdarwal[-1]
puts "==========="
# * What is the smallest deposit?
pos_deposit = transactions.select { |transaction| transaction.positive?}
smallest_deposit = pos_deposit.sort
puts smallest_deposit[-1]
puts "==========="
# * What is the total value of all the transactions?
sum = 0
transactions.each do |transaction|
  sum = sum + transaction
end
puts sum
puts "==========="
# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
sum = 0
initial = 239_900
transactions.each do |transaction|
  sum = sum + transaction
end
total = sum + initial
puts total
puts "==========="
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

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
puts best_records.count
puts "=========="
# * Who are all the artists listed?
best_records.each do |artist, record|
  puts "#{artist} - #{record}"
end
puts "=========="
# * What are all the album names in the hash?
best_records.each do |artist, record|
  puts record
end
puts "=========="
# * Delete the `Eminem` key-value pair from the list.
binding.pry
best_records.delete("Eminem")
best_records.delete("The Marshall Mathers LP")
best_records.each do |artist, record|
  puts "#{artist} - #{record}"
end
puts "=========="
# * Add your favorite musician and their best album to the list.
best_records["Notorious BIG"] = "Life After Death"
best_records.each do |artist, record|
  puts "#{artist} - #{record}"
end
puts "=========="
# * Change `Nirvana`'s album to another.
best_records["Nirvana"] = "Bleach"
best_records.each do |artist, record|
  puts "#{artist} - #{record}"
end
puts "=========="
# * Is `Nirvana` included in `best_records`?
if best_records.include?("Nirvana")
  puts "Yes it does."
else
  puts "Nah' son."
end
puts "=========="
# * Is `Soundgarden` included in `best_records`?
if best_records.include?("Soundgarden")
  puts "Yes it does."
else
  puts "Nah' son."
end
puts "=========="
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
if best_records.include?("Soundgarden")
  puts "Yes it does."
else
  puts "Let's add it!"
best_records["Soundgarden"] = "Superunknown"
best_records.each do |artist, record|
  puts "#{artist} - #{record}"
end
end
puts "=========="
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
small_artist = best_records.select { |artist, record| artist.length <= 6}
small_artist.each do |artist, record|
  puts "#{artist}"
end
puts "=========="
# * Which key-value pairs have a value that is greater than 10 characters?
big_record = best_records.select { |artist, record| record.length >= 6}
big_record.each do |artist, record|
  puts "#{record}"
end
puts "=========="
