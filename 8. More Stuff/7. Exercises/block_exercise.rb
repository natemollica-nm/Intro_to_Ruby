# What will the following program print to the screen?

def execute(&block)
  block.call
end

execute { puts "hello from inside the execute method" }
