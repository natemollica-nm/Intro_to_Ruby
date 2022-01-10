# Modify the code below so that the user's input gets added to the numbers array. Stop the loop when the array contains 5 numbers.
# My Answer:
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  if numbers.size == 5
    break
  else
    next
  end
end
p numbers

# Given Answer:
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i

  numbers.push(input)
  break if numbers.size == 5
end
puts numbers