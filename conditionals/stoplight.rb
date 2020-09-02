stoplight_machine = ['green', 'yellow', 'red'].sample

case stoplight_machine
  when 'green'  then puts "Go!"
  when 'yellow' then puts "Slow down!"
  else               puts "Stop!"
end

if stoplight_machine == 'green'
  puts 'Go!'
elsif stoplight_machine == 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end
