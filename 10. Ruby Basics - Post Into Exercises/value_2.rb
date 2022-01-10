# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# Answer: 7
# Actual: 7 (Same reasone as value_1 because the mutation does not maintain to the original variable.)