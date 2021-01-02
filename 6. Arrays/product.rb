# Example of combining two arrays on a one-for-one pairing.
array1 = [1,2,3]
array2 = [4,5,6]

product_array = array1.product(array2)
puts "#{product_array}"

#Showing no mutation.
puts "#{array1}"
puts "#{array2}"