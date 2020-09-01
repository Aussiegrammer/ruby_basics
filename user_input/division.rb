def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts ">> Invalid Input. Only integers please."
end  

denominator = nil
loop do
  puts ">> Please enter the denominator:"
  denominator = gets.chomp
  if denominator == '0' 
    puts ">> Cannot divide by 0."
  else
    break if valid_number?(denominator)
    puts ">> Invalid Input. Only integers please."
  end
end

result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} = #{result}"

=begin Scrapped because messy to read.
loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  if valid_number?(numerator)
    puts ">> Please ender the denominator"
    denominator = gets.chomp
    if denominator == '0'
      puts ">> Cannot divide by 0."
      next
    elsif valid_number?(denominator)
      puts "#{numerator.to_i} / #{denominator.to_i} is #{numerator.to_i / denominator.to_i}"
    end
  end
  break
end
=end