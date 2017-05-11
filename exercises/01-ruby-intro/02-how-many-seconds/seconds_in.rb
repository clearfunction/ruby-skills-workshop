SECONDS_IN_MINUTE = 60
MINUTES_IN_HOURS = 60

def seconds_in_minutes(minutes)
  SECONDS_IN_MINUTE * minutes
end

def seconds_in_hours(hours)
  seconds_in_minutes(MINUTES_IN_HOURS) * hours
end

print 'How many hours? '

# read input from the user and strip whitespace
hours = gets.chomp

result = seconds_in_hours(hours.to_i)

puts "There are #{result} seconds in #{hours} hours!"
