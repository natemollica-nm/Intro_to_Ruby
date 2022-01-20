

=begin
def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples
The error message tells you that the method find_first_nonzero_among was given 6 
  arguments but expects only 1 (specified by the parameter numbers).

The second method invocation (line 10) receives the correct number of arguments, 
  so no error is raised on line 1. However, as soon as the program tries to 
    evaluate line 2 with the given argument, it raises a NoMethodError:

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)


def predict_weather
  sunshine = ['true', 'false'].sample
  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end
predict_weather
# Issue: returns true always because the array is of String type not boolean


def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number)}!"
# Issue: passing String type to Integer/Double function --> returns binary

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] = pets[:dog].push('bowser')

p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}
Issue: She was using pets[:dog] = 'bowser'
Alternative: pets[:dog] << 'bowser'

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map { |n| n if n.even? }.compact

p even_numbers # expected output: [2, 6, 8]
# Issue: using map vice select --> if map use .compact to remove nils 
  otherwise use select


  def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    return 'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'
# Issue - should be using return statement since the last statement of the method
    would return a nil.
    could use if/elsif as alt.




# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance = balance + calculate_balance(month)
end

puts balance
# Issue: Foreach loop needed balance = BALANCE + to be continue changed balance


colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
max_items = [colors.length, things.length].min
loop do
  break if i > (max_items - 1)
  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end


def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0
# Issue: were using 0 vice 1 as product var initializer value


# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge!(character_classes[input.to_sym])

puts 'Your character stats:'
puts player

#Issue: merge method should be mutating (i.e., merge! vice merge)
        input was still string resulting in error when trying to 
        obtain value -- > needs to convert from string to symbol via .to_sym
=end