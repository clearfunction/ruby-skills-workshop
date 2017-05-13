require 'sinatra'
require 'ruby_cowsay'

get '/ruby-class' do
  'HELLO RUBY CLASS'
end

get '/' do
  'this is the best page <strong>ever</strong>'
end

get '/help' do
  ""
end

get '/cowsay/:text' do
  text = Cow.new.say(params['text'])
  
  erb :cowsay, locals: {
    cow_said: text
  }
end