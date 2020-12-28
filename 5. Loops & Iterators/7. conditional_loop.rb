# conditional_loop.rb
# Conditional loop that breaks only if i is equal to 10.
i = 0
loop do
  i += 2
  puts i
  if i == 10
    break       # this will cause execution to exit the loop
  end
end