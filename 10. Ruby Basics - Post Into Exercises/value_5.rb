# What will the following code print, and why? Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# Answer: Xyzzy
# Actual: Xyzzy (Variable scope and mutation not inherent in method being used - method is to set variable.)