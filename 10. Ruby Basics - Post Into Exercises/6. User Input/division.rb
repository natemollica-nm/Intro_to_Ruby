=begin
Write a program that obtains two Integers from the user, then prints the results 
of dividing the first by the second. The second number must not be 0, and both 
numbers should be validated using this method:
=end
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end