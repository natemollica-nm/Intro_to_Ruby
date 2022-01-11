def hello
  "Hello"
end
def world
  "World"
end

puts hello + " " + world

def greet
  printf("#{hello} #{world}")
end

greet