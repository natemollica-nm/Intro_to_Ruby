# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# Answer: Won't work cause a isn't defined within the scope of the method.
=begin
# Actual: value_10.rb:8:in `block in my_value': undefined method `+' for nil:NilClass (NoMethodError)
        from value_10.rb:7:in `each'
        from value_10.rb:7:in `my_value'
        from value_10.rb:12:in `<main>'
=end