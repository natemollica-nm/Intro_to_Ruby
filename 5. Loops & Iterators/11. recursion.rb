# Recursion
# Recursion - the act of calling a method from within itself.

# This is the sample method we want to better with recursion.
=begin
def doubler(start)
  puts start * 2
end
=end
# This is the corrected method - enhanced with recursion.
# The recursion portion is the part where, in the methods if-statement, it uses the 'doubler' method itself.
def doubler(start)
  puts start
  if start < 10 # only evaluates expressions less than 10.
    doubler(start * 2)
  end
end

puts "put in a start number: "
  input = gets.chomp.to_i

  doubler(input)