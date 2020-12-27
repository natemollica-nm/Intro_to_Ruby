# Demonstrates a method that greets using a given name input.

def greeting(name)
  puts "Hello #{name}!"
end

puts "Hi! What's your name? "
  name_input = gets.chomp
  greeting(name_input)