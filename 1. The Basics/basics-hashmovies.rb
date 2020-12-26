# This code creates a hash of movies and their release year, then prints the years to the screen.

movies_hash = {:"The Green Mile" => 1999, :"Forrest Gump" => 1994, :"What's eating Gilbert Grape" => 1993, :"Rain Man" => 1988}

movies_hash.each { |key,value| puts "#{value}"}

# Take the output from the previous line, store to an array, and print to screen.
movie_years_array = []
movies_hash.each { |key,value| movie_years_array << "#{value}"}

puts movie_years_array