# Using next, modify the code below so that it only prints even numbers.
# My answer:
number = 0

until number == 10
  number += 1
  next if number % 2 != 0
  puts number
end

# Why did next have to be placed after the incrementation of number and before #puts?
# Because the iteration would never get past 1.
# Given Answer:
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end