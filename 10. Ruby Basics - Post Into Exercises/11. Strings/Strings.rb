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

colors = 'blue pink yellow orange'
puts colors.split(' ') { |color| color == 'yellow'}
puts colors.split(' ') { |color| color == 'purple'}