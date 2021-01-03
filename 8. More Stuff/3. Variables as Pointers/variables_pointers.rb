# Short explanation of how variables act as pointers.

# Creates place in memory for 'a' array.
# Note: check a.object_id to see that it is a unique object.
a = [1, 2, 3, 3]

# Uses 'a' place in memory for 'b' to point to.
b = a

# 'c' calls 'a' array to generate a new array with the modiying method applied.
c = a.uniq

# 'c' calls 'a' array with '!' mutator to indicate that we want the original array to change.
c = a.uniq!

=begin
# Conceptually explained below:
irb(main):001:0> a = [1,2,3,3]
=> [1, 2, 3, 3]
irb(main):002:0> b = a
=> [1, 2, 3, 3]
irb(main):003:0> c = a.uniq
=> [1, 2, 3]
irb(main):004:0> a.object_id
=> 260
irb(main):005:0> b.object_id
=> 260
irb(main):006:0> c.object_id
=> 280
irb(main):007:0> c = a.uniq!
=> [1, 2, 3]
irb(main):008:0> c.object_id
=> 260
irb(main):009:0> a
=> [1, 2, 3]
irb(main):010:0> b
=> [1, 2, 3]
irb(main):011:0> c
=> [1, 2, 3]
=end