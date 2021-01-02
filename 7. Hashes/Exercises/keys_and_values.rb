# Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. 
# Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

# Loops through hash and prints all keys.
family.keys.each { |key| puts "Family: #{key}" }

friends = {  best_f: ["bob", "joe", "steve"],
  aquaintences: ["jane", "jill", "beth"],
  family_fs: ["frank","rob","david"],
  babes: ["mary","sally","susan"]
}

# Loops through hash and prints all values

friends.values.each do |value| 
  value.each { |v| puts "Fraaaanddss: #{v}"}
end

movies_hash = {:"The Green Mile" => 1999, :"Forrest Gump" => 1994, 
  :"What's eating Gilbert Grape" => 1993, :"Rain Man" => 1988}

new_movies_hash = {:"The Avengers" => 2012, :"The Skeleton Twins" => 2014, 
    :"Phenomenon" => 2020, :"Friday" => 1995}

movies_hash.merge!(new_movies_hash)

movies_hash.each { |key, value| puts "Movie: #{key} \n Release Year: #{value}"}