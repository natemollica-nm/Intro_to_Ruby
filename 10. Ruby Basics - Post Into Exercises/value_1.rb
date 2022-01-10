# What will the following code print and why? Don't run it until you have tried to answer.
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# Answer: Prints 17
# Actual: 7 because the value is not mutated upon exiting the method.