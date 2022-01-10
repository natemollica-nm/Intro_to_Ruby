# What will the following code print, and why? Don't run the code until you have tried to answer.

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# Answer: Won't go through because a isn't initialized.
# Actual: value_8.rb:9:in `<main>': undefined local variable or method `a' for main:Object (NameError)