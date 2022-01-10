# Given the code below, use a while loop to print "Hello!" twice.
# My Answer:

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

i = 0
while i < number_of_greetings
  greeting()
  i += 1
end

# Given Answer:
def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end
