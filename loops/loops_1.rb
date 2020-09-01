# Runaway Loop
loop do
  puts 'Just keep printing...'
  break
end

# Loopception

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

# Control the Loop

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations == 5
  iterations += 1
end 


# Loop on Command

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end

# Say Hello

say_hello = true
count = 0
while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

# Alternative:

5.times {puts 'Hello!'}

# Generate Random numbers and put in array

numbers = []
while numbers[4] == nil
  random_number = rand(100)
  puts random_number
  numbers << random_number
end

p numbers

# Count Up from 10
# Modify the code so that it counts from 1 to 10 instead.

count = 1

until count > 10
  puts count
  count += 1
end

# One line alternative

(1..10).each { |i| puts i }

# Print Until
# Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]

until numbers.count == 0 
  puts numbers.shift
end

# That's Odd
# Modify the code so that it only outputs i if i is an odd number.

for i in 1..100
    puts i if i % 2 != 0
end

# Alternative: 

for i in 1..100
    puts i if i.odd?
end

# Greet your Friends
# Your friends just showed up! Given the following array of names,
# use a for loop to greet each friend individually.

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}!"
end