car = [[:type, 'sedan'],[:color, 'blue'],[:year, 2003]]
p car

=begin
 car = {type: "sedan", color: "blue", mileage: "80_000", year: "2003"}
car[:mileage] = nil
car.compact!

puts car[:color]

numbers = {
  high:   100,
  medium: 50,
  low:    10
}
numbers.each_pair {|key,value| puts "A #{key} number is #{value}."}

half_numbers = numbers.map { |key,value| value / 2 }
p half_numbers

low_numbers = numbers.select { |key,value| value < 25  }
p low_numbers

low_numbers = numbers.select! { |key,value| value < 25  }
p low_numbers
p numbers

car = {type: "sedan", color: "blue", year: "2003"}
truck = {type: "pickup", color: "red", year: "1998"}
vehicle_hash = {}
vehicle_hash[:vehicles] = car
vehicle_hash.update(truck)
p vehicle_hash

=end