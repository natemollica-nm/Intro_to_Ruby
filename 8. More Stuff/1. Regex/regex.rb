## Basic Info on Regex.
# Regex = regular expression. 
#         Regular expression is a sequence of chars that form pattern matching rules, 
#         and is then applied to a string to look for matches.
# Example 1.
# Trying to find if the letter 'b' is within the given string.
string = "powerball"
# Returns 5 because 'b' is the 5th letter in the string (AKA 5th index)(0,1,2,4,5).
# Here the =~ operator is used to find a match and return the index.
string =~ /b/

# Here we use the .match method to have the output return an object that can then be used.
# Returns a MatchData object. Can use this for a boolean value for rest of program.
/b/.match(string)

# Example 2 - Program to take user input to multiply two values together. Uses regex to differentiate spaces and commas.
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