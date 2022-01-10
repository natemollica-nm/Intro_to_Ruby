# What will each of the 3 puts statements print?
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
puts s.split(',').inspect
puts s.split(',', 2).inspect

=begin
Answers:
1. Prints \'abc def ghi,jkl mno pqr,stu vwx yz\'
2. Prints 'abc def ghi jkl mno pqr stu vwx yz'
3. Prints 'ab c def ghi jkl mno pqr stu vwx yz'
Actual Result
["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]
["abc def ghi", "jkl mno pqr", "stu vwx yz"]
["abc def ghi", "jkl mno pqr,stu vwx yz"]
=end