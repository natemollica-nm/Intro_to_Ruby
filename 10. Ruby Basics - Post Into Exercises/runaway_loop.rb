# The code below is an example of an infinite loop. The name describes exactly what it does: loop infinitely. 
# This loop isn't useful in a real program, though. Modify the code so the loop stops after the first iteration.
=begin
loop do
  puts 'Just keep printing...'
end
=end
# Answer:

loop do
  puts "Just keep printing..."
  break
end
