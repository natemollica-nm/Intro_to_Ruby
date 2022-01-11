number_of_lines = nil
while ((number_of_lines != "Q") || (number_of_lines != "q")) do

  loop do
    puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
    number_of_lines = gets.chomp
    if ((number_of_lines == "Q") || (number_of_lines == "q")) then
      return number_of_lines
    end
    break if number_of_lines.to_i >= 3
      puts ">> That's not enough lines."
  end

  iterations = number_of_lines.to_i

  while iterations > 0
    puts 'Launch School is the best!'
    iterations -= 1
  end

end


