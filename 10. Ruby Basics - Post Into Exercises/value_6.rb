# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# Answer: 7
# Actual: value_6.rb:6:in `my_value': undefined local variable or method `a' for main:Object (NameError)
 #       from value_6.rb:10:in `<main>' 
 #  (This is due to trying to call on a within the method. a is not yet defined within the method scope.)