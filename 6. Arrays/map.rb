# map method
# iterates over array exactly like each
# The only difference is that it returns a new array whereas the each method does not


array = [[1,2,3],[4,5,6],[7,8,9]]

# Mapping the code (as shown below) vice using .each will return an array of [[]3, 4, 5], [6, 7, 8], [9, 10, 11]]
# The return is a nested version of the original but with the applied block code.
# Still no mutation on the return.
array.map do |nested_array|
  nested_array.map do |element|
    new_element = element + 2
  end
end
