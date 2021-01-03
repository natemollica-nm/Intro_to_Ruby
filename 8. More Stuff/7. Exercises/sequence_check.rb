# Write a program that checks if the sequence of characters "lab" exists in the following strings. 
#   If it does exist, print out the word.

words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

def lab_seq_check(array)
  array.each do |word|
    word = word.capitalize
    if /[lab\s]/.match(word)
      puts "#{word} matches l,a,b sequence!"
    else 
      puts "#{word} does NOT match l,a,b sequence!"
    end
  end
end

lab_seq_check(words)