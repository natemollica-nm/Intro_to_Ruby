# Given the below array, find out if the user given number is in the array.

def check_array(num, array)
  if array.include? num
  puts "#{num} is in found within the array" 
  else 
    puts "#{num} is in NOT found within the array"
  end
end

arr = [1, 3, 5, 7, 9, 11]

puts "What number would like to check against the array? "
  user_num = gets.chomp.to_i

check_array(user_num, arr)