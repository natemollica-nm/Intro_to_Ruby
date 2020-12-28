# Demonstrates a method that multiplies two inputs.

def multiply(num1, num2)
  num1 * num2
end

puts "What two numbers do you want to multiply? (separate by comma or space)"

  num_input = gets.chomp.split(/[,\s*]+/)
  # regexp is /[,\s*]+ where / delimits the regexp, the [] tells the internal contents to search using 'or' statements
  # (i.e. /ab/ means a followed by b; [/[ab]/] means a or b), \ is a backslash-escape to move to next regexp search,
  # \s means to search for a white space character (a space or blank as apposed to \S - non-whitespace char), and
  # + means to match the previous regexp search options one or more times.
  a = num_input[0].to_i
  b = num_input[1].to_i
multiply_output = multiply(a, b)

puts "The product of #{a} and #{b} is #{multiply_output}!"