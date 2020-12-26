# This code calculates the squares of a given input float number.

puts "Input number you want to square: "
  num = gets.chomp.to_i
  square_root = Integer.sqrt(num)
  puts "#{num}'s square root is #{square_root}."
  