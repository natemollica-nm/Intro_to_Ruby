# Write a program that asks the user whether they want the program to print "something", 
# then print it if the user enters y. Otherwise, print nothing.
=begin
$ ruby something.rb
>> Do you want me to print something? (y/n)
y
something

$ ruby something.rb
>> Do you want me to print something? (y/n)
n

$ ruby something.rb
>> Do you want me to print something? (y/n)
help
=end
def print_something
  puts ">> Do you want me to print something? (y/n)"
    ans = gets.chomp.downcase
    loop do
      if (ans == "y") || (ans == "yes")
        puts "something"
      else
        print_something()    
      end
    break
  end
end


print_something()


# Given Answer:
=begin
puts '>> Do you want me to print something? (y/n)'
choice = gets.chomp
puts 'something' if choice == 'y'
=end
