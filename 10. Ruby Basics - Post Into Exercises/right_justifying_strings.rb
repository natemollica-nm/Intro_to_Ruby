# Use the ruby documentation for the String class to determine which method can be used to right justify a String object.
# Answer: user rjust(integer, padstr='') --> Method for string class.
#   Explanation: If integer provided in method invocation is > length of provided string, return new string of the length of integer with right justification and
#       padded with padstr; otherwise return str.
string = "My " + "Name " + "is " + "Nate"

p string.rjust(30)

# Returns "        My Name is Nate!!!!" where the entire space is now 30 characters long with whitespace.