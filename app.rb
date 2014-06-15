require 'sinatra/base'
class App < Sinatra::Base
  get '/' do
    "Hello World"
  end

  post '/' do
    "Hello World, via POST"
  end

  put '/' do
    "Hello World, via PUT"
  end

  delete '/' do
    "Goodbye Word, via DELETE"
  end
end