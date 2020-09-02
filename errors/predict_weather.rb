# Our predict_weather method should output a message indicating whether a sunny or cloudy day lies ahead.
# However, the output is the same every time the method is invoked. Why? 
# Fix the code so that it behaves as expected.

def predict_weather
  sunshine = [true, false].sample # These are not booleans, they are strings. Adjusted to be booleans
  
  if sunshine # <-- 'if sunshine' is always true because 'true' and 'false' strings are truthy
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end


predict_weather
