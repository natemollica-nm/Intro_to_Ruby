# This code asks user how old they are and predicts their age.

puts "How old are you? "
  age = gets.chomp.to_i

age_arr = []
ten_years = age + 10
age_arr << ten_years
twenty_years = age + 20
age_arr << twenty_years
thirty_years = age + 30
age_arr << thirty_years
forty_years = age + 40
age_arr << forty_years

puts "In ten years you'll be #{age_arr[0]}!"
puts "In ten years you'll be #{age_arr[1]}!"
puts "In ten years you'll be #{age_arr[2]}!"
puts "In ten years you'll be #{age_arr[3]}!"
