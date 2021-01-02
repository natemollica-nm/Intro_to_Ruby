# Determine the output of each below.
# My Answer: [b,2],[b,3],[a,1],[a,2],[a,3] --> Assumed that calling arr.first twice meant that it was deleting the 1st and Last
#   element of the originally selected 1st element. Not true.
# arr gets reset to [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
# Correct Answer: It deletes the '1' from the first element of the new array because .delete(arr.first.last) --> Have to call arr.first again.
arr = ["b", "a"]
arr = arr.product(Array(1..3))

# 1. Return arr.first
# 2. From that return, chain the delete method
# 3. Delete the return of arr.first's last element.
arr.first.delete(arr.first.last)

# Returned product arr is [[["b", [1, 2, 3]], ["a", [1, 2, 3]]]
# Same delete request as before so, will delete [1,2,3] from the first element. arr will then be equal to [["b"], ["a", [1, 2, 3]]]
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)