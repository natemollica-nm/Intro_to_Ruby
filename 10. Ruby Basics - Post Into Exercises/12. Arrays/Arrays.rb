array1 = [1, 5, 9]
array2 = [1, 9, 5]
p "Arrays are equal: #{array1 == array2}"
=begin

pets = ['cat', 'dog', 'fish', 'lizard']
colors = ['red','yellow','purple','green']

select_pet = Proc.new { |my_pet|
  if(pets.any?(my_pet))
    pets.select {|pet| pet == my_pet}.first
  else
    puts "We don't have that pet here!"
  end
}

my_pets = []
my_pets.push(select_pet.call "fish")
my_pets.push(select_pet.call "lizard")
my_pets.delete('lizard')
my_pets.push(select_pet.call "dog")
puts "I have a pet #{my_pets.first} and a pet #{my_pets.last}!"

def print_my_color(color_in)
  puts "I'm the color #{color_in}!"
end
colors.each {|color| print_my_color(color)}

numbers = [1,2,3,4,5]
doubled_numbers = numbers.map {|number| number * 2}
p doubled_numbers

numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select { |num| num % 3 == 0 }
p divisible_by_three

arr = ['Dave', 7, 'Miranda', 3, 'Jason', 11]
hashArr = Hash[arr.each_slice(2).to_a].to_a
p hashArr
p hashArr.flatten
=end