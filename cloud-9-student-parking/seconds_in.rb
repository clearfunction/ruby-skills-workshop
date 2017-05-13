SECONDS_IN_MINUTE = 60
MINUTES_IN_HOURS = 60

def seconds_in_minutes(minutes)
  SECONDS_IN_MINUTE * minutes
end

def seconds_in_hours(hours)
  seconds_in_minutes(MINUTES_IN_HOURS) * hours                                               
end


# seconds_in_hours(12)

puts 'How many hours?: '

# read input from the user
hours = gets

result = seconds_in_hours(hours.to_i)

puts "There are " + result.to_s + " seconds in " + hours + " hours!"