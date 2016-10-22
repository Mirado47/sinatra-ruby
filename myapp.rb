# myapp.rb
require 'sinatra'
require 'sinatra/reloader'
Num = rand(100)

guess = -1
error = ""
get '/' do
    guess = params["guess"].to_i
    error = checker
    erb :index, :locals => {:num => Num, :error => error}
end
  def checker
      if (Num < params['guess'].to_i)
       "Too high"
    elsif(Num > params['guess'].to_i)
      "Too low"  
    else
      "Rock and Roll"
    end
      
  end