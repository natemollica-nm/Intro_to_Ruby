# Block
# Blocks are lines of code ready to be executed. Standby lines of code.
# Use {} if it can fit on one line and do/end if > 1 line.

names = ['bob', 'nate', 'is', 'wuz', 'hat-been', 'hat-wuz']
x = 1

names.each do |thingy|
  puts "#{x}. #{thingy}"
  x += 1
end