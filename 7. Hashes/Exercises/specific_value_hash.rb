# What method could you use to find out if a Hash contains 
#   a specific value in it? Write a program to demonstrate this use.

movies_hash = {:"The Green Mile" => 1999, :"Forrest Gump" => 1994, 
  :"What's eating Gilbert Grape" => 1993, :"Rain Man" => 1988}

new_movies_hash = {:"The Avengers" => 2012, :"The Skeleton Twins" => 2014, 
    :"Phenomenon" => 2020, :"Friday" => 1995}

movies_hash.merge!(new_movies_hash)

p movies_hash.include? :"Wedding Crashers" # False

p movies_hash.include? :Friday # True

