require 'geocoder'

print 'where?'

location = gets.chomp!

loCord = Geocoder.coordinates(location)

puts loCord