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

# The following means that just going to '/hello' would fail - as it is only set up for the full path.
#  get '/hello/:first_name/:last_name' do |first, last|
#    "Hello #{first} #{last}"
#  end

# Add ? to make a part of the filepath optional
 get '/hello?/?:first_name?/?:last_name?' do |first, last|
   "Hello #{first} #{last}"
 end
end