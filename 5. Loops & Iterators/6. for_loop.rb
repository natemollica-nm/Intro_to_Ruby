# For Loops
# Loops over collection of elements, therefore has a finite number of things to loop through.
# This differs from the while loop that can cause an infinite loop.
# Works in conjunction with the 'for' and 'in' reserved words. (ex: for <variable> in <collection_of_elements>)

# Iterating through Range using For Loop
x = gets.chomp.to_i

for i in 1..x do
  puts i if i % 2 != 0
end

puts "Donesky!"

# Iterating through Array using For Loop

a = Array(1..50)

for i in a do
  puts i if i % 5 == 0
end