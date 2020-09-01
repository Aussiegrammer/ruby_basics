# Even or Odd?
# Write a loop that prints numbers 1-5 and whether the number is even or odd.

count = 1

loop do
  if count % 2 == 0
    puts "#{count} is even!"
  else
    puts "#{count} is odd!"
  end
  
  break if count == 5
  count += 1
end

# Catch the Number
# Modify the following code so that the loop stops if number is equal to or between 0 and 10.

loop do
  number = rand(100)
  puts number
  break if (number >= 0) && (number <= 10)
end

# Alternative, using Comparable#between? method

loop do 
  number = rand(100)
  puts number
  
  if number.between?(0, 10)
    break
  end
end

# Conditional Loop

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end

# Get the Sum

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer! Try again!"
  end
end

# Insert Numbers

numbers = [1, 2, 3, 4, 5]

loop do
  puts 'Enter any number:'
  numbers << gets.to_i
  break if numbers.size >= 5
end
puts numbers

# Empty the Array

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.size == 0
  # Alternative: break if names.empty?
end

# Stop Counting
# The method below counts from 0 to 4. Modify the block so that it prints the current number and stops iterating when the current number equals 2.
5.times do |index|
  puts index
  break if index == 2
end

# Only even
# Using next, modify the code below so that it only prints even numbers.

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# First to Five

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  
  if (number_a == 5) || (number_b == 5)
    puts "5 was reached!"
    break
  end
end

# Alternative, using next

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5
  
  puts '5 was reached!'
  break
end

# Greeting
# Given the code below, use a while loop to print "Hello!" twice.

def greeting
  puts 'Hello!'
end

number_of_greetings = 2
while number_of_greetings > 0 do
  greeting
  number_of_greetings -= 1
end
