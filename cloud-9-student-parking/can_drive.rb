puts 'What is your age?: '

# read input from the user
age = gets

if age.to_i >= 16
    puts 'Go drive safe... and do not text'
else
    puts 'Sorry, try again in a year'
end