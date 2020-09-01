loop do 
  puts ">> Do you want me to print something? (y/n)"
  choice = gets.chomp.downcase
  if choice == 'y'
    puts 'something'
    break
  elsif choice == 'n'
    break
  else
    puts "Invalid! Please enter y or n"
  end
end  

# Alternative proposed from LS.

choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice) # %w is a shortcut for an array. array#include? tests against this array for the required choice.
  puts ">> Invalid input! Please enter y or n"
end
puts 'something' if choice == 'y'