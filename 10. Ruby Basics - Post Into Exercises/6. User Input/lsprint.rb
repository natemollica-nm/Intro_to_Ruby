=begin
Write a program that prints 'Launch School is the best!' repeatedly until a certain number 
of lines have been printed. The program should obtain the number of lines from the user, and 
should insist that at least 3 lines are printed.

For now, just use #to_i to convert the input value to an Integer, and check that result instead 
of trying to insist on a valid number; validation of numeric input is a topic with a fair number 
of edge conditions that are beyond the scope of this exercise.
=end
def line_puts(inputs)
  i = 0
  while i < inputs
    if inputs < 5
      puts "Not enough lines!"
      break
    else
    puts "#{i+1}. Launch School is the best!" unless i > inputs
    i += 1
    end
  end
end


puts ">> How many output lines do you want? Enter a number >= 5: "
  num_of_inputs = gets.chomp.to_i

line_puts(num_of_inputs)