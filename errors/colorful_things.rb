# The following code throws an error. Find out what is wrong and think about how you would fix it.

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black'] # 8 colours
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook'] # 7 things 

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i >= things.length # <-- i is compared against colours. Easy fix is to change this to things. Also changed from '>' to '>='

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.' # <- no implicit conversion of nil into String (TypeError). There is 'nil' things in the 8th iteration of this loop, or things[8]
  end

  i += 1
end

# . How can you change the break condition, such that the loop always stops once we hit the end of the shorter array?

break if i >= things.length || colors.length 