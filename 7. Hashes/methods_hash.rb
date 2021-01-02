# Common Ruby Hash Methods

# has_key? - Allows you check for a specific key within a hash.
name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19 }

# .select - Allows you to pass a block and returns any key-value pairs that evaluate to true when the block is ran.
# Can select based on only the key value.
name_and_age.select { |k,v| k == "Bob" }

# Can select based on key or value within hash.
name_and_age.select { |k,v| (k == "Bob") || (v == 19) }

# fetch - Allows you to pass a given key and will return value for that key if it exists.
#         Note: Can specify an option for return if that key is not present.

# Example of fetching existing key.
name_and_age.fetch("Steve")

# Example of fetching non-existent key - Will result in error since no option for return is specified.
# name_and_age.fetch("Larry")

# Example of fetching non-existent key with return option specified.
name_and_age.fetch("Larry", "Larry isn't in the hash")

# to_a - Method returns an array version of the hash when called. NO MUTATION!
p name_and_age.to_a

# keys and values - Can use .keys and .values to obtain ALL keys or ALL values from hash.
# Returns keys or values in array format.
p name_and_age.keys
p name_and_age.values
# Can take the array and print it in a desired output
name_and_age.keys.each { |k| puts k}