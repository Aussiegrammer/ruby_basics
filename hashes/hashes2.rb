numbers = {
  high:   100, 
  medium: 50,
  low:    10
}

numbers.each do |k, v|
  puts "A #{k} number is #{v}"
end

half_numbers = numbers.map do |k, v|
                            v / 2
                          end
p half_numbers

low_numbers = numbers.select! { |k, v| v < 25 }

p low_numbers
p numbers

