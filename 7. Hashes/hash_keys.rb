# Demonstrations of using other data types as keys.
require "pry"
hash1 = {"height" => "6 ft"}     # string as key

hash2 = {["height"] => "6 ft"}   # array as key

hash3 = {1 => "one"}             # integer as key

hash4 {45.324 => "forty-five point something"}  # float as key

hash5 = {{key: "key"} => "hash as a key"}  # hash as key
binding.pry