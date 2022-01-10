# Modify the following loop so it iterates 5 times instead of just once.
=begin
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break
end
=end
# Answer:
iterations = 1

loop do
  puts "Number of iterations = #{iterations}."
  iterations += 1
  if iterations > 5
    break
  end
end