# This code outputs the factorial of the numbers 5,6,7,8

def factorial(num)
  factorial_arr = []
  i = num
  factorial_arr << i
  until i <= 1 do
    i -= 1
    factorial_arr << i
  end
  # .inject is an instance method for the Enumerable class (https://ruby-doc.org/core-3.0.0/Enumerable.html#method-i-inject)
  #  It combines all elements of enum by applying a binary operation, specified by a block or symbol that names a method or operator.
  #  In this case it uses a block with the product method of the Array class
  factorial_sum = factorial_arr.inject { |product, x| product * x }
  puts "The factorial of #{num} is #{factorial_sum}."
end

puts "Enter your number here: "
 num = gets.chomp.to_i

factorial = factorial(num)

