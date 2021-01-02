# General hash info.
# Prior to Ruby 1.9, hashes failed to maintain order (like arrays).
# Just take note of Ruby version to know how the hashes will behave.


# Two methods of creating hashes.
# Pre Ruby 1.9
old_syntax_hash = {:name => 'bob'}

# Ruby 1.9 and on supports this.
new_hash = {name: 'bob'}

# Example hash 'person' and adding 'hair' and 'age'.
person1 = { height: '6 ft', weight: '160 lbs' }
person1[:hair] = 'brown'
person1[:age] = 62

# Merging hashes. Adds new_hash to person1 hash.
person1.merge!(new_hash)
p new_hash
p person1

# Exhibiting how hashes can also have default parameters like methods.
person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end
# Shows greeting method with defaulted hash.
greeting("Bob")
# Shows greeting method with given hash options.
# Note: The {} are note required to pass into the method hash argument if the hash is the LAST argument!!!
greeting("Bob", {age: 62, city: "New York City"})

# Same as previous without {}.
greeting("Bob", age: 62, city: "New York City")