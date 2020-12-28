# fibonacci.rb
# Example of Ruby program that prints the nth number in the fibonacci sequence.
def fibonacci(num)
  if num < 2
    num
  else
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end

puts "What nth number in the Fibonacci sequence do you want to find? "
  nth_var = gets.chomp.to_i

puts fibonacci(nth_var)
