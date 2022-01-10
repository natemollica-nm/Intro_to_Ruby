# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
# Answer: 7 (Not mutatable).
# Actual: 3 (each do with = is mutable.) (Blocks are mutabled - the do/end of the array call.)