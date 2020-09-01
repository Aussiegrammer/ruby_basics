USER = 'admin'
PASSWORD = 's3cure!'

loop do
  puts ">> Please enter your user name:"
  user_try = gets.chomp
  
  puts ">> Please enter your password:"
  password_try = gets.chomp
  
  break if user_try == USER && password_try == PASSWORD
  
  puts "Login failed. Please try again."
end

puts "Welcome!"