require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

get('/') do
  erb(:input)
end

get('/output') do
  # triangle = Parcel.new(0,0,0)
  @length = params.fetch("length")
  @width = params.fetch("width")
  @depth = params.fetch("depth")
  dist = params.fetch("distance")
  speed = params.fetch("air_ground")
  parc = Parcel.new(@length, @width, @depth)

  @string_to_display = "Your shipping will cost $#{parc.cost_to_ship(dist,speed)}.00."

  erb(:output)
end
