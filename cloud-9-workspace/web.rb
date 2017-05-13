require 'sinatra'
require './simple_cowsay'

get '/' do
   hi
end

get('/') do
    hi
end

get('/') { hi }

get '/username' do
  `whoami`
end

get '/double' do
  doubler 1
end

# print 2n to the screen
def doubler(n)
    (n + n).to_s
end

# example:  GET /shout/hi => you said HI!
get '/shout/:user_input' do
   # docs:      "Hello #{params['name']}!"
  user_input = params['user_input']
  
  # string interpolation:
    # requires double quotes "" not ''
    #  the contents of the #{whatever this is} are evaluated and inserted into the string
  speaker = SimpleCowsay.new('random')
  
  speaker.say(user_input) + speaker.say(user_input)
 # random_cowsay "you said #{user_input.upcase}!"
end
 

puts doubler(4)

def hi
    'hi'
end