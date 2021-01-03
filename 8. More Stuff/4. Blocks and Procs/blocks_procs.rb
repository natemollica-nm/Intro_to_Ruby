# More about blocks and procs
# Main Idea: Blocks can be passed into methods like parameters.
# The block must always be the last parameter in the method definition.

# passing_block.rb
def take_block(&block)
  block.call
end

# Below is same as take_block { puts "Block being called in the method!" }
take_block do
  puts "Block being called in the method!"
end