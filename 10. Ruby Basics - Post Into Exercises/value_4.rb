# What will the following code print, and why? Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# Answer: Xyzzy
# Actual: Xy-zy --> the string index change is inherently mutatable.