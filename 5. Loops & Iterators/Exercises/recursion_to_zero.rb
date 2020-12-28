# Method that counts down to zero using recursion

def subone_recursion(num)
  puts "Still counting down..."
  puts num -= 1
  unless num <= 0
    subone_recursion(num)
  end
end

puts "Where do you want to countdown from? "
  num_input = gets.chomp.to_i

subone_recursion(num_input)
  