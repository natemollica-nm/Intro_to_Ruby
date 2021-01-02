# each method provides the preferred solution to iterating over an array vice using the for loop.
# Commonly used with a block to pass code to each element of the array.
# If used with block, the return will be a new index showing the applied block (code).
# No mutation when used with block.
# Showing each, each_index, and each_with_index

array = [[1,2,3],[4,5,6],[7,8,9]]

 #Prints out only the index numbers of the array elements.
array.each_index { |i| puts "This is index #{i}" }

# Note: the below can manipulate both the value and index (IN THAT ORDER) of the array elements.
array.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }

# Example of using block and showing no mutation.
block_applied_array = []
array.each do |nested_array|
  nested_array.each do |element|
    new_element = element + 2
    block_applied_array << new_element
  end
end
puts "#{block_applied_array}"
