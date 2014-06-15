require 'sinatra/base'

IMAGES = [
  { title: "The Green"    , url: "http://images6.alphacoders.com/310/310407.jpg" },
  { title: "Alaska"       , url: "http://www.tours4theworld.com/themes/default/uploads/alaska_discovery_land_and_cruise/pic1.jpg" },
  { title: "The Unknown"  , url: "http://th07.deviantart.net/fs71/PRE/f/2010/285/8/d/rainmeter__into_the_unknown_by_weredawg-d30lcbn.png"},
]

class App < Sinatra::Base

  before /images/ do
    @message = "You're viewing an image."
  end

  before do
    @user = 'Roi Driscoll'
    puts "==> Entering Request"
  end

  after do
    puts "<== Leaving Request"
  end

  get '/images/?' do
    @images = IMAGES
    erb :images
  end

  get '/images/:index' do |index|
    index = index.to_i
    @image = IMAGES[index]
    erb :"images/show", layout: true
    # this lets a folder be referenced for the template
    #haml :"images/show", layout: true
  end

  get '/' do
    erb :hello, layout: true
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
  # get '/hello/:first_name/:last_name' do |first, last|
  #   "Hello #{first} #{last}"
  # end

  # Add ? to make a part of the filepath optional
 get '/hello?/?:first_name?/?:last_name?' do |first, last|
   "Hello #{first} #{last}"
 end
end