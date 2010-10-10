require 'mongoid'

class Fillup
  include Mongoid::Document
  
  field :vehicle_name
  field :location
  field :odometer
  field :gallons
  field :date
  field :rate
  
end