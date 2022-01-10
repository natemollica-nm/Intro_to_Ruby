# Given the array below, use loop to remove and print each name. Stop the loop once names doesn't contain any more elements.
# Second part: Can you change this to print the names from last to first? --> Answered by my original answer.
# Answer:

names = ['Sally', 'Joe', 'Lisa', 'Henry']

while names.length > 0
  p names.pop 
end

# Given Answer:
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end