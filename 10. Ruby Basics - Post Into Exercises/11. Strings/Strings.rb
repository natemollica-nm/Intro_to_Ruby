=begin 
def helloGoodBye(var_in)
  var_value = "Goodbye!"
  var_in.gsub!(var_in, var_value)
end

greeting = 'Hello!'
puts greeting
helloGoodBye(greeting)
puts greeting

alphabet = 'abcdefghijklmnopqrstuvwxyz'
alphabet.split('') { |letter| puts letter }

words = 'car human elephant airplane'
words.split(' ') { |word| puts word + 's'}

Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. 
  Then, print true if colors includes the color 'purple' and print false if it doesn't.
=end

colors = 'blue pink yellow orange'

p colors.split(' ').any?(/yellow/)
p colors.split(' ').any?(/purple/)