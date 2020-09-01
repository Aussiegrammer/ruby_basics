PASSWORD = 's3cure!'

loop do
  puts ">> Please enter your password!:"
  break if gets.chomp == PASSWORD
  puts ">> Invalid password!"
end

puts "Welcome!"