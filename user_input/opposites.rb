def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def opposite_check(a, b) # Confirm if both numbers are opposite eachother
  (a > 0 && b < 0) || (a < 0 && b > 0) # The better way to do this is a*b > 0
end

integer_a = nil
integer_b = nil

loop do
  puts ">> Please enter a positive or negative integer:"
  integer_a = gets.chomp
  
  if !valid_number?(integer_a)
    puts "Invalid input. Only non-zero integers are allowed."
    next
  end
  loop do
    puts ">> Please enter another positive or negative integer:"
    integer_b = gets.chomp
    if !valid_number?(integer_b)
      puts "Invalid input. Only non-zero integers are allowed."
      next
    end
    break
  end
  break if opposite_check(integer_a.to_i, integer_b.to_i)
  puts ">> One integer must be positive, one must be negative. Please try again."
end

result = integer_a.to_i + integer_b.to_i

puts "#{integer_a} + #{integer_b} = #{result}"

# Neater solution provided by LS. Note that the nested loops are clean when defined.

def read_number
  loop do
    puts ">> Please enter a positive or negative integer:"
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

number_a = nil
number_b = nil

loop do
  number_a = read_number
  number_b = read_number
  break if first_number * second_number < 0 # Simple way to determine positivity
  puts ">> One integer must be postiive, one negative."
  puts ">> Please try again."
end

result = number_a + number_b
puts "#{number_a} + #{number_b} = #{result}"

=begin Scrapped, too messy.
loop do 
  puts ">> Please enter a positive or negative integer:"
  integer_a = gets.chomp
  if valid_number?(integer_a)
    puts ">> Please enter another positive or negative integer:"
    integer_b = gets.chomp
    if valid_number?(integer_b) && valid_number?(integer_a.to_i, integer_b.to_i)
      break
    elsif !valid_number?(integer_b)
      puts ">> Invalid input. Only non-zero integers are allowed."
    else
      
  puts ">> Invalid input. Only non-zero integers are allowed."
end

loop do
  puts ">> Please enter another positive or negative integer:"
  integer_b
=end 