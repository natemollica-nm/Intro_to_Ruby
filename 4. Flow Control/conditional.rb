# Demonstrates Conditionals in Ru
 def Captilize(string)
  if string.length > 10
    puts string.upcase
  else
    puts string
  end
end

  puts "Input your phrase. Anything greater than 10 chars will be in caps: "
  input = gets.chomp

  Captilize(input)

# This program will determine if the user input is between 0 and 50 or between 51 and 100.

def ZeroToHunrd(num)
  if (num >= 0) && (num <= 50)
    puts "#{num} is between 0 and 50!"
  elsif (num >=51) && (num <= 100)
    puts "#{num} is between 51 and 100!"
  else
    puts "Number is not between 0 and 100!"
  end
end

puts "Put in a number between 0 and 100: "
  num_input = gets.chomp.to_i

ZeroToHunrd(num_input)

