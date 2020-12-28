# While Loop that takes input from user, performs an action, and only stops when the user types "STOP".

def while_loop_excercise(user_input)
   loop do 
    break if user_input == "STOP"
    puts "You must want more!"
    puts "Tell me what you want? "
      user_input = gets.chomp.upcase
      break if user_input == "STOP"
   end
  end

puts "This is your first input. Tell me what you want: "
  user_input = gets.chomp.upcase

  while_loop_excercise(user_input)
