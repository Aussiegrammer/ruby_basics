# We want to iterate through the numbers array and return a new array containing only the even numbers. 
# However, our code isn't producing the expected output. Why not? How can we change it to produce the expected result?



numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n| # <-- Map iterates through all array entries and returns true / false even if you fix below
  n if n.even? # <-- #even? returns true or false even, adding nils here. v 
end

p even_numbers # expected output: [2, 6, 8]. Actual Output: [nil, 2, nil, 6, nil, nil, 8]

# Proposed Fix
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n| # <-- Changed to #select, returning a new array only containing truthy elements
                n.even? 
               end

p even_numbers # ==> [2, 6, 8]
