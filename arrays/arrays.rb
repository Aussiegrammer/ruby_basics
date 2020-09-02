pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets[2]
puts "I have a pet #{my_pet}!"

my_pets = [pets[2], pets[3]]
# Better:
my_pets = pets[2..3]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

my_pets.pop
puts "I have a pet #{my_pets[0]}!"

my_pets << pets[1]
# Alternative
# my_pets.push(pets[1])

puts "I have a pet #{my_pets[0]} and pet #{my_pets[1]}!"

colours = ['red', 'yellow', 'purple', 'green']

colours.each do |colour|
  puts "I'm the colour #{colour}!"
end

colours.each { |colour| puts "I'm the colour #{colour}!" }

numbers = [1, 2, 3, 4, 5]
doubled_numbers = []

numbers.each do |number|
  doubled_numbers << number * 2
end

# Alternative:
doubled_numbers = numbers.map do |number|
                    number * 2
                  end

p doubled_numbers

# Print divisible by 3
numbers = [5, 9, 21, 26, 39]
divisible_by_3 = []

numbers.each do |number|
  divisible_by_3.push(number) if number % 3 == 0
end

# Cleaner alternative

divisible_by_3 = numbers.select do |number|
                  number % 3 == 0
                end

p divisible_by_3
