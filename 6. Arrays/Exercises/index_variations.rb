# Determine what each of these does.
=begin
arr = [15, 7, 18, 5, 12, 8, 5, 1]

# Returns 12
# Correct answer: Returns 3. This method as invoked will return the index of the given argument.
arr.index(5)

# Returns 8
# Invalid syntax!
arr.index[5]

# Returns 12
# I was counting wrong
# Correct Answer is 8.
arr[5]

# The below changes 'margaret' to 'jody'.
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'


array = [[1,2,3],[4,5,6],[7,8,9]]
  array.each_with_index do |value, index|
    index += 1
    puts "#{index}. #{value}"
  end
=end

# Final Excercise: Create an array, iterate over it and add two to each  element, keep original and output new array.
array = [[1,2,3],[4,5,6],[7,8,9]]

def nested_map(arr)
  arr.map do |nested_arr|
    nested_arr.map { |element| element = element + 2 }
    end
  end

array2 = nested_map(array)

  p array
  p array2
