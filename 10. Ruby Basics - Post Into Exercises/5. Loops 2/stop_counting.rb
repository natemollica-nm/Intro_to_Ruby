# The method below counts from 0 to 4. Modify the block so that it prints the current number and stops iterating when the current number equals 2.

5.times do |index|
 p index
 break if index == 2
end

# Second part:Without running this code, how many values will be printed?
# Prints all the times of 5.times since 0-4 == 5.
5.times do |index|
  puts index
  break if index == 4
end

# Third part: How many values will be printed this time?
# Only prints 0.
5.times do |index|
  puts index
  break if index < 7
end
