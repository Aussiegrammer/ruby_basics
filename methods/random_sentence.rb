def name(array)
  return array[rand(4)]
end

def activity(array)
  return array[rand(3)]
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts "#{name(names)} went #{activity(activities)} today!"