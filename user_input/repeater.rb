loop do
  puts "Type anything you want. 'EXIT' to stop."
  input = gets.chomp
  if input == 'EXIT'
    puts "Ending program."
    break
  else
    puts "#{input}"
  end
end