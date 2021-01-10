# Arrays

a = [1,2,3,4,5,6,7,8,9,10]
# 1. Use the each method of Array to iterate over [1,2,3,4,5,6,7,8,9,10] and print each value.
a.each { |num| p num }

# 2. Use the each moethod of Array to iterate over and print only values > 5.
a.each { |num| p num if num > 5 }

# 3. Use the select method to extract all odd numbers and create new array.
a_odd_nums = a.select { |num| num if num.odd? }

# 4. Append 11 to original array, and pre-pend 0 to the beginning.
a << 11
a.unshift(0)

# 5. Get rid of 11 and append a 3.
a.pop
a << 3

# 6. Get rid of duplicates without specifically removing any one value.
a.uniq

# 7. Whats the major difference between an Array and a Hash?
# An array organizes it's data via indexes, while a hash uses key-value pairs where you call on the key for a specific value.

# 8. Create a Hash, with one key-value pair, using both Ruby syntax styles.
hash_old = {:key => 'value'} 
hash_new = {key: 'value'}

# 9. Given the following hash:
#     a) Get the value of key ':b'
#     b) Add to this hash the key:value pair '{e:5}'
#     c) Remove all key:value pairs whose value is less than 3.5.
h = {a:1,b:2,c:3,d:4}
# a)
h[:b]
# b)
h[:e] = 5
# c)
h.each { |k,v| h.delete(k) if v < 3.5 }

# 10. Can hash values be arrays? Can you have an array of hashes? (give examples)
# Yes, hash values can be arrays. So can hash keys. 
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']
def anagram_hash(word_array)
  word_array.group_by { |word| word.chars.sort }
end
# The call below returns:
# {["d", "e", "m", "o"]=>["demo", "dome", "mode"], 
#  ["e", "n", "n", "o"]=>["none", "neon"], 
#  ["d", "e", "i", "t"]=>["tied", "diet", "edit", "tide"], 
#  ["e", "i", "l", "v"]=>["evil", "live", "veil", "vile"],
#  ["f", "l", "o", "w"]=>["fowl", "wolf", "flow"]}
anagram_hash(words)
# Array of hashes
hash1 = {:key => 'value'} 
hash2 = {value: 'key'}

# The below returns: [{:key=>"value"}, {:value=>"key"}] <-- An array of hashes.
array_of_hashes = [hash1, hash2]

# 11. Given the following data structures. Write a program that copies the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

def update_hash_joe(array,hash)
  new_value = {}
  array.each do |sub_array|
    sub_array.each { |info| new_value = sub_array if /joe/.match("#{info}") }
    hash["Joe Smith"] = new_value
  end
end

def update_hash_sally(array,hash)
  new_value = {}
  array.each do |sub_array|
    sub_array.each { |info| new_value = sub_array if /sally/.match("#{info}") }
    hash["Sally Johnson"] = new_value
  end
end

update_hash_joe(contact_data, contacts)
update_hash_sally(contact_data, contacts)


# 12. Using the previous hash, demonstrate how to access Joe's email and Sally's phone number.
# Joe's email
p "Joe's email is: #{contacts["Joe Smith"][0]}."
# Sally's phone
p "Sally's phone number is: #{contacts["Sally Johnson"][2]}."


# 13. Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word[0] == 's'}

p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?("s")}

p arr


# 14. Take the following array and turn into new array that consists of strings containing one word. 
a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']

arr_new = a.map { |element| element.split(/[,\s*]+/)}.flatten

p arr_new

p a


# 15. These hashes are the same!
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# 16. programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array. 
# Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

def update_hash(hash,array)
  i = 0
  length = hash.length
  while i < length
    hash[hash.keys[i]][:email] = array[i][0]
    hash[hash.keys[i]][:address] = array[i][1]
    hash[hash.keys[i]][:phone] = array[i][2]
    i += 1
  end
end

update_hash(contacts,contact_data)

p contacts