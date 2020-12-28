# While Loop Example
# A while loop is given a parameter that evaluates a boolean (True or False).
# Once the expression (parameter) becomes false the loop breaks.
# IMPORTANT NOTE: The Boolean is evaluated prior to vode execution of loop. (Differs from do/while loop - is the opposite)

x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 2
end

puts "Done!"