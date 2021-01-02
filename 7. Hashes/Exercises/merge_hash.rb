# Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge
#    and merge!? Write a program that uses both and illustrate the differences.

# Family/Friends example uses merge invocation without mutation and prints to screen.
family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

friends = {  best_f: ["bob", "joe", "steve"],
  aquaintences: ["jane", "jill", "beth"],
  family_fs: ["frank","rob","david"],
  babes: ["mary","sally","susan"]
}
print "\n"
p family.merge(friends)
print "\n"
p family
print "\n"
p friends
print "\n"

 # Movies example uses merge invocation with mutation and prints to screen.
movies_hash = {:"The Green Mile" => 1999, :"Forrest Gump" => 1994, 
  :"What's eating Gilbert Grape" => 1993, :"Rain Man" => 1988}

new_movies_hash = {:"The Avengers" => 2012, :"The Skeleton Twins" => 2014, 
    :"Phenomenon" => 2020, :"Friday" => 1995}

movies_hash.merge!(new_movies_hash)
print "\n"
p movies_hash
print "\n"

