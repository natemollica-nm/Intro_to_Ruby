# Procs - blocks that are wrapped in a proc object and stored in a variable to be re-used.

talk = Proc.new do
  puts "I am talking."
end

talk.call

# Proc with argument

talk2 = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk2.call "Bob"

# Passing a proc to a method.

def take_proc(proc)
  [1,2,3,4,5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)