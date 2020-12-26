# This code will take a 4 digit number and output the tens, hundreds, thousands place digits.

puts "Enter a four digit number: "
  num = gets.chomp.to_f


thousands = num.divmod(1000)[0]
puts "This is the thousands place: #{thousands}"
hundreds = num.divmod(100)[0] % 10
puts "This is the hundred place: #{hundreds}"
tens = num.divmod(10)[0] % 10
puts "This is the tens place: #{tens}"
