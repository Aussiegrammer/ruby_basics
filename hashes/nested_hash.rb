# Nested Array. Note, hashes are much preferred with K/V pairs. Arrays shine with ordered lists. 
cars_nested_array = [[:type, 'sedan'], [:colour, 'blue'], [:year, 2003]]

# Nested hash:
cars_nested_hash = 
{
  car:    {type: 'sedan', colour: 'blue',year: 2003},
  truck:  {type: 'truck', colour: 'red', year: 1998}
}

p cars_nested_array
p cars_nested_hash
