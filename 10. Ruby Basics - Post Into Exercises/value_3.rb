# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# Answer: 7
# Actual: 7 (Due to lack of mutation being implemented and variable scope of a.)