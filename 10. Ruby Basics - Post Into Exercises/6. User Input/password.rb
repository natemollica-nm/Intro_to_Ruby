=begin
Write a program that displays a welcome message, 
but only after the user enters the correct password, 
where the password is a string that is defined as a 
constant in your program. Keep asking for the password 
until the user enters the correct password.
=end
PASSWORD = "%T^Y7u8i%T^Y7u8i"

def password_check
  puts "Please enter your password: "
  password = gets.chomp
  if password == PASSWORD
    puts "Welcome!"
  else
    puts "Invalid password! Retry..."
    password_check()
  end
end

password_check