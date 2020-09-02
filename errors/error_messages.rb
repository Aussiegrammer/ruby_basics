# You come across the following code. What errors does it raise for the given examples and what exactly do the error messages mean?


def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0) # (ArgumentError), too many arguements. find_first_nonzero_among expects one, and only one argument
find_first_nonzero_among(1) # (NoMethodError) #each doesn't iterate against integers. It would have to be an array of numbers, for example. 