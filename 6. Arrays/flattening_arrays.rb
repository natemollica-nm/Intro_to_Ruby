# Examples of flattening arrays

# Flatten - takes all nested arrays and creates a one-dimensional array
# No mutation occurs.

array = [[1,2,3],[4,5,6],[7,8,9]]
puts "This is array: #{array}"

flat_array = array.flatten

puts "This is array flattened: #{flat_array}"