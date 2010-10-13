require 'sinatra'
require 'fillup'

def create_fillup
  Fillup.create!(:vehicle_name => 'Jeep',
                 :location => 'Snohomish 76',
                 :odometer => 12345,
                 :gallons => 14.987,
                 :date => Date.new,
                 :rate => 3.012)
end

get '/' do
  "love?"
  # create_fillup
  # Fillup.all().to_json
end
