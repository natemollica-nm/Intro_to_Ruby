# Turn alphabet to hash table with numbers.
alphabet_arr = Array('a'..'z')
alphabet_hash = Hash.new



i = 1
while i < 27
  letter = alphabet_arr[i-1]
      alphabet_hash[:"#{letter}"] = i
      i += 1
    end