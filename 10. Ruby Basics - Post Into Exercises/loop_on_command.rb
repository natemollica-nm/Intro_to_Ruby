# Modify the code below so the loop stops iterating when the user inputs 'yes'.
=begin op do
  puts 'Should I stop looping?'
  answer = gets.chomp
end
=end
# Answer: 
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == "yes"
end