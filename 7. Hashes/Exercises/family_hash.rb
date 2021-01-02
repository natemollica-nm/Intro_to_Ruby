# Given a hash of family members, with keys as the title and an array of names as the values, 
#   use Ruby's built-in select method to gather only immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}
array = []
family.select { |k,v| array.push(v) if (k == :sisters || k == :brothers) }
array = array.flatten

p array

# Provided solution
immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr
