# Example for anagram
# require "pry"
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

def combine_anagrams(words)
  anagram_groups = []
  # For each word in array argument
  words.each do |word|

    # Tracking variable for the word
    word_added = false

    anagram_groups.each do |group|
      # Check if word already exists (prevents duplicates)
      if group.include? word
        word_added = true
      # Add word to group if it is an anagram of the first string in the group
      elsif word.downcase.chars.sort == group[0].downcase.chars.sort
        group << word
        word_added = true        
      end
    end

    # If word was not an anagram of anything, create new group (subarray)
    unless word_added
      anagram_groups << [word]
      word_added = true
    end
# binding.pry
  end
  return anagram_groups
end

p combine_anagrams(words)