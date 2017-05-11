require 'sinatra'
require 'ruby_cowsay'
require './second_calculator'

get '/' do
  'check out /hello'
end

get '/ruby-class' do
  'HELLO RUBY CLASS'
end

get '/seconds_in_minutes/:minutes' do
  calc = SecondCalculator.new

  minutes = params['minutes'].to_i
  result = calc.seconds_in_minutes(params['minutes'].to_i)

  "There are #{result} seconds in #{minutes}!"
end

get '/cowsay/:text' do
  text = Cow.new.say(params['text'])

  erb :cowsay, locals: {
    cow_said: text
  }
end
