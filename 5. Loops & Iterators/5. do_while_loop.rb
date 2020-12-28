# Do/While Loop
## IMPORTANT NOTE: The Boolean is evaluated after the loop code execution. (Differs from while loop - is the opposite.)
# perform_again.rb

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp.downcase
  if answer != 'Y'.downcase
    break
  end
end

# This is the same as the above with the exception of the construct. The below is an alternative way to write
# do/while loops. This form is not recommended.
begin
  puts "Do you want to do that again?"
  answer = gets.chomp.downcase
end while answer == 'y'