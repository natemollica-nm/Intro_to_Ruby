# next_loop.rb
# Next statement will skip the rest of the code in the loop when it executes.

i = 0
loop do
  i += 2
  if i == 4
    next        # skip rest of the code in this iteration
  end
  puts i
  if i == 10
    break
  end
end