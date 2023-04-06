p "Where are you located?"

# user_location = gets.chomp

user_location = "Memphis"

p user_location

gmaps_url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{user_location}&key=AIzaSyB92cYxPcYqgjwBJfWlwDQw_7yjuyU3tpA"

require "open-uri"

raw_response = URI.open(gmaps_url).read


require "json"
parsed_response = JSON.parse(raw_response)
results_array = parsed_response.fetch("results")

first_result = results_array.at(0)
geo = first_result.fetch("geommetry")
loc = geo.fetch("location")
latititude = loc.fetch("lat")
longitude = loc.fetch("lng")

p latitude
p longitude
