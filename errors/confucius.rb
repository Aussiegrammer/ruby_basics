# You want to have a small script delivering motivational quotes, but 
# with the following code you run into a very common error message:
# no implicit conversion of nil into String (TypeError). 
# What is the problem and how can you fix it?

def get_quote(person)
 if person == 'Yoda'
   'Do. Or do not. There is no try.'
 end

  if person == 'Confucius' # <-- Hits if here and returns the string
   'I hear and I forget. I see and I remember. I do and I understand.'
  end

 if person == 'Einstein' # <-- the string gets compared against Einstein, which is 'false', returning Nil. Nil isn't a string, throwing the error
  'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
 end
end


def get_quote(person)
  case person
     when 'Yoda'
     'Do. Or do not. There is no try.'
    when 'Confucius' # <-- Hits if here and returns 'nil' within the method...
     'I hear and I forget. I see and I remember. I do and I understand.'
    when 'Einstein' # <-- nil gets compared against a string, throwing the error
     'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
    else 
      'Quote not found.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'