loop do
  puts ">> How many output lines do you want? Enter a number >= 3: (Q to Quit)"
  lines = gets.chomp
  break if lines == 'q' || lines == 'Q'
  if lines.to_i >= 3
    lines.to_i.times { puts "Launch School is the best!" }
  else
    puts "That's not enough lines."
  end
end

