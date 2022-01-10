# Write a program that asks the user for their age in years, and then converts that age to months.
=begin
$ ruby age.rb
>> What is your age in years?
35
You are 420 months old.
=end

def years_to_months(input)
  months = input * 12
end

puts ">> What is your age in years? "
  user_age_input = gets.chomp.to_i

user_age_months = years_to_months(user_age_input)

puts "You are #{user_age_months} months old."

# Given Answer:
puts '>> What is your age in years?'
age_in_years = gets
age_in_months = 12 * age_in_years.to_i
puts "You are #{age_in_months} months old."