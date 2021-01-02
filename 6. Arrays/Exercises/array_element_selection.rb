# Determine how to return the word "example" from the below array.
arr = [["test", "hello", "world"],["example", "mem"]]

arr[1][0]

arr.last.first

arr.last.select {|element| element == "example"}.first