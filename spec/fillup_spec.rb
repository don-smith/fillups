require 'spec_helper'
require 'fillup'

describe Fillup do
  
  it 'has required fields' do
    fillup = Fillup.new
    fillup.should respond_to(:vehicle_name)
    fillup.should respond_to(:location)
    fillup.should respond_to(:odometer)
    fillup.should respond_to(:gallons)
    fillup.should respond_to(:date)
    fillup.should respond_to(:rate)
  end
  
  it 'can be saved' do
    fillup = Factory(:fillup)
    found_fillup = Fillup.first(:conditions => {:odometer => "12345"})
    found_fillup.vehicle_name.should == fillup.vehicle_name 
  end

end