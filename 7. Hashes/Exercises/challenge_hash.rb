# Challenge: Given the array...
# Tuples are included with Rinda gem (gem install rinda)

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

# .each_char - Passes each character in a string to the block. (Can use 'str.chars' which is the same as 'str.each_char.to_a'.)
#              After generating the below arrays. This gets passed to the sort method.
#     ["d", "e", "m", "o"],
#     ["n", "o", "n", "e"],
#     ["t", "i", "e", "d"],
#     ["e", "v", "i", "l"],
#     ["d", "o", "m", "e"],
#     ["m", "o", "d", "e"],
#     ["l", "i", "v", "e"],
#     ["f", "o", "w", "l"],
#     ["v", "e", "i", "l"],
#     ["w", "o", "l", "f"],
#     ["d", "i", "e", "t"],
#     ["v", "i", "l", "e"],
#     ["e", "d", "i", "t"],
#     ["t", "i", "d", "e"],
#     ["f", "l", "o", "w"],
#     ["n", "e", "o", "n"]
# .sort - Sorts each element of enumerator (array of characters arrays) alphabetically.
#  POST SORTING (- = repeated element in array)
#                       ["d", "e", "m", "o"]
#                       ["e", "n", "n", "o"]
#                       ["d", "e", "i", "t"]
#                       ["e", "i", "l", "v"]
# ["d", "e", "m", "o"] -
# ["d", "e", "m", "o"] - 
# ["e", "i", "l", "v"] -
#                       ["f", "l", "o", "w"]
# ["e", "i", "l", "v"] -
# ["f", "l", "o", "w"] -
# ["d", "e", "i", "t"] -
# ["e", "i", "l", "v"] -
# ["d", "e", "i", "t"] -
# ["d", "e", "i", "t"] -
# ["f", "l", "o", "w"] -
# ["e", "n", "n", "o"] -
# .values - Returns new array populated with the values from the hash.
# .group_by - Groups the return of the block and returns a hash table; where keys = block return (i.e. return of sort) and values = arrays of elements that correspond to key.
# Summary
# 1. Iterate each word in the word array and prepare to group. (.group_by)
# 2. Iterate each character of each word and sort alphabetically. Returns new array. (.chars.sort)
# 3. .values - Return only the values of the key value hash.
# 5. Group the words in the words array into hash table; Removes any duplicates received from sort because hashes can only have one key with it's own value. 
#     Returns: {["d", "e", "m", "o"]=>["demo", "dome", "mode"], 
#               ["e", "n", "n", "o"]=>["none", "neon"], 
#               ["d", "e", "i", "t"]=>["tied", "diet", "edit", "tide"], 
#               ["e", "i", "l", "v"]=>["evil", "live", "veil", "vile"], 
#               ["f", "l", "o", "w"]=>["fowl", "wolf", "flow"]}
#     Returns with .values: 
#               [["demo", "dome", "mode"], ["none", "neon"], ["tied", "diet", "edit", "tide"], ["evil", "live", "veil", "vile"], ["fowl", "wolf", "flow"]]

def anagram(word_array)
  word_array.group_by { |word| word.chars.sort }.values
  binding.pry
end


# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:
# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

p anagram(words)