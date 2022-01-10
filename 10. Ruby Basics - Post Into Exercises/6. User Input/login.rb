=begin
In the previous exercise, you wrote a program to solicit a password. 
In this exercise, you should modify the program so it also requires a user name. 
The program should solicit both the user name and the password, then validate both, 
and issue a generic error message if one or both are incorrect; the error message 
should not tell the user which item is incorrect.
=end
PASSWORD = "%T^Y7u8i%T^Y7u8i"
USERNAME = "nate_mollica"

def user_name_val
  puts "Please enter your username: "
  username = gets.chomp
  if username == USERNAME
    puts "Welcome #{username}! Please enter your password: "
    password = gets.chomp
    password_check("#{password}")
  else
    puts "Invalid username: "
    user_name_val()
  end
end


def password_check(password, retry_count = 0)
  retry_max = 3
  if password == PASSWORD
    puts "Welcome!"
    retry_count = 0
  elsif retry_count < retry_max
    retry_count += 1
    puts "Invalid password! Reattempt #: #{retry_count}."
    puts "Please enter your password: "
    password_retry = gets.chomp
    password_check("#{password_retry}", "#{retry_count}".to_i)
  else
    puts "Too many password failures!!"

  end
end

user_name_val

=begin
# Given answer:
USERNAME = 'admin'
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your user name:'
  user_name = gets.chomp

  puts '>> Please enter your password:'
  password_try = gets.chomp

  break if user_name == USERNAME && password_try == PASSWORD
  puts '>> Authorization failed!'
end

puts 'Welcome!'
=end
