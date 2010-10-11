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
    fillup = Fillup.create!(
      :vehicle_name => 'Jeep',
      :location => 'Snohomish 76',
      :date => Date.new(2010, 10, 10).to_s,
      :odometer => 97657,
      :gallons => 15.679,
      :rate => 2.983)
    found_fillup = Fillup.first(:conditions => {:odometer => "97657"})
    found_fillup.vehicle_name.should == fillup.vehicle_name 
  end
  
end