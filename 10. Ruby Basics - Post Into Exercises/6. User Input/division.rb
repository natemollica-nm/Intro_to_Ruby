=begin
Write a program that asks the user to enter two integers, then prints the results of dividing the first by the second. 
  The second number must not be 0. Since this is user input, there's a good chance that the user won't enter a valid integer. 
    Therefore, you must validate the input to be sure it is an integer. You can use the following code to determine whether the input is an integer:

====== Function valid_number? =======
It returns true if the input string can be converted to an integer and back to a string without loss of information, false otherwise. 
  It's not a perfect solution in that some inputs that are otherwise valid (such as 003) will fail, but it is sufficient for this exercise.
=end

def valid_number?(number_string)
  # Check if valid Integer input by taking String input --> Converting to Integer --> and comparing to input
  numCompare = number_string.to_i.to_s
  if numCompare == number_string
    return true
  else
    return false
  end
end

num_input1, num_input2 = ""

while valid_number?(num_input1) == false
  puts "Please enter the numerator: "
    num_input1 = gets.chomp
    valid_number?(num_input1)
    if valid_number?(num_input1) == false
      puts "Invalid input. Only integers are allowed."
    end
end
while valid_number?(num_input2) == false
  puts "Please enter the denominator: "
  num_input2 = gets.chomp
  valid_number?(num_input2)
  if valid_number?(num_input2) == false
    puts "Invalid input. Only integers are allowed."
  end
end

return_value = num_input1.to_i / num_input2.to_i
puts num_input1.to_s + " / " + num_input2.to_s + " is " + return_value.to_s


  