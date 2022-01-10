# Using Ruby Docs determine how to write a large number or numbers in a way to make them easier to read.

def large_num_comma(num)
  num.to_s.chars.reverse.each_slice(3).map(&:join).join(",").reverse
end
# 1. Take Integer input.
# 2. Conver to string
# 3. Return an array of the string's characters.
# 4. Reverse the array of individual string digits (Reversing will place commas in correct position after re-reversing)..
# 5. Slice the reversed array into slices of 3.
# 6. Return a newly mapped array of the slices of three and join them to a single array.
# 7. .join(",") then converts the elements to a string and separates via the ',' requested.
# 8. Reverse the newly created string to return the number to it's normal order and return.

x = 123456789
y = 1234567891011121314151617181920

p large_num_comma(x)
p large_num_comma(y)


# Actual Launch School Solution
#   Use what's known as Literals in Ruby. You can separate numbers to be more readable by using the underscore (_) between sections of the number.
# z and e below are the exact same number; z is just separating using _.
z = 1_2_3_345678
e = 123345678

p z
p e