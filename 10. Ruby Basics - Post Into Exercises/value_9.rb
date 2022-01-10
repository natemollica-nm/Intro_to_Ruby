# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# Answer: 7 --> the .each on the array is only mutating the array elements not the a var defined outside the block scope.
# Actual: 7