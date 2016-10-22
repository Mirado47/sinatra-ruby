# myapp.rb
require 'sinatra'
require 'sinatra/reloader'

get '/' do
    x = rand(100)
    'This random number is ' + x.to_s
end
