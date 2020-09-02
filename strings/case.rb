name = 'Roger'
compare = 'RoGeR'

name_2 = 'DAVE'

puts 'true' if name.downcase == compare.downcase

puts 'false' unless name_2.downcase == compare.downcase

# Better:

name = 'Roger'

puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0

