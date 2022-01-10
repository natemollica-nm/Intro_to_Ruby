# Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.
# My answer: using sample array method --> uses (5) as n argument to indicate how many random samples we want out of the array.
numbers = *(0...99)
total = 0
while total != 5
  sample_arr = numbers.sample(5)
  p sample_arr
  total = sample_arr.length
end

# Given answer: using rand public method rand(max) --> the max variable being set to 100 indicates to select an integer >0 but less than 100 (max var).
numbers1 = []

while numbers1.size < 5
  numbers1 << rand(100)
end

puts numbers1