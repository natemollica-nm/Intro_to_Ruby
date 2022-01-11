def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def onepos_oneneg?(number_string1, number_string2)
  (number_string1.to_i > 0 && number_string2.to_i < 0) || (number_string1.to_i < 0 && number_string2.to_i > 0)
end



user_input, user_input2 = nil

while true do
  
    puts "Please enter a positive or negative integer (#1 of 2): "
    user_input = gets.chomp
    puts "Please enter a positive or negative integer (#2 of 2): "
    user_input2 = gets.chomp

  until (valid_number?(user_input)) && (valid_number?(user_input)) && onepos_oneneg?(user_input, user_input2) do
    if (valid_number?(user_input) == false)
      puts "Invalid input. Only non-zero integers are allowed."
      puts "Please try again..."
      puts "Please enter a positive or negative integer (#1 of 2): "
      user_input = gets.chomp
    elsif (valid_number?(user_input2) == false)
      puts "Invalid input. Only non-zero integers are allowed."
      puts "Please try again..."
      puts "Please enter a positive or negative integer (#2 of 2): "
      user_input2 = gets.chomp
    elsif (onepos_oneneg?(user_input, user_input2) == false)
      puts "Invalid input. Ensure one integer is Positive (+) and one integer is Negative (-)"
      puts "Please start over..."
      user_input, user_input2 = nil
      break
    end
  end

    if (user_input != nil) && (user_input2 != nil)
      puts user_input + " + " + user_input2 + " = " + (user_input.to_i + user_input2.to_i).to_s
      break
    end

end