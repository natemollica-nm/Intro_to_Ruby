# Until Loop
# Until Loop = Opposite of While Loop (Loop that evals bool, then executes code)
# Not like do/while opposite, but that it's expressed syntactically different.

x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"