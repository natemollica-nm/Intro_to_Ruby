# More examples of variables as pointers

def test(b)
  b.map { |letter| "I like the letter: #{letter}"}
end

a = ['a','b','c']

test(a)
# returns the phrase "I like the letter __" for each letter in an array (.map)