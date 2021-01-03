# Exception Handling: the specific process that deals with errors in a manageable and predictable way.
# Ruby uses the Exception Class to make handling exceptions easier.
# Exception Class - uses reservered words 'begin', 'rescue', and 'end'.
# Commonly seen built-in Error Types:
=begin
        StandardError
        TypeError
        ArgumentError
        NoMethodError
        RuntimeError
        SystemCallError
        ZeroDivisionError
        RegexpError
        IOError
        EOFError
        ThreadError
        ScriptError
        SyntaxError
        LoadError
        NotImplementedError
        SecurityError
=end

# Example
begin # perform some dangerous operation

rescue
  # do this if operation fails
  # for example, log the error

end

# exception_example.rb
# If the program didn't have the begin/rescue/end within the block it would terminate upon hitting the 'nil' in the array.
names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end

# inline_exception_example.rb
# Can use Handling exceptions within line blocks.
zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"

# divide.rb
# Can use already pre-defined errors within the exception handling block.
def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e # e is a variable. We're saving the error to call it with the message method.
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)