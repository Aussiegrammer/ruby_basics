car = { # Create Hash
  type: 'sedan',
  colour: 'blue',
  mileage: 80_000
}

car[:year] = 2003 # Add to existing hash
p car

car.delete(:mileage) 
p car

puts car[:colour] # Blue